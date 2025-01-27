%% Switch Capacitor using OTA for 2nd Order DSM, (c) Hrishikesh, @HSB
clc
clear all

%% Calibration of test system
L = 2;                % Order of modulator
form = 'CIFB';        % Cascade of integrator feedback
fs = 1e6;           % Sampling frequency 
M = 500;              % OSR
N = 16*M;             % Simulation length (output samples), FFT points
fB = fs/2/M;          % Bandwidth
cycles = 9;           % Number of sinusoids
fx = cycles * fs/N;   % Test tone
A = 0.8;              % Signal amplitude

u = A * sin(2 * pi * fx/fs * [0:N-1]);

%% Design NTF
H = synthesizeNTF(L, M);

% Updated Pole-zero plot (Manual Replacement for plotPZ)
fig1 = figure(1);

% Extract poles (p) and zeros (z) of the NTF (Noise Transfer Function)
[z, p, k] = zpkdata(H, 'v');  % Extract zeros, poles, and gain as vectors

% Hold plot for multiple elements
hold on;

% Create a scatter plot for zeros with improved visibility
scatter(real(z), imag(z), 80, 'o', 'DisplayName', 'Zeros', 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'c', 'LineWidth', 1.5);

% Create a scatter plot for poles with enhanced style
scatter(real(p), imag(p), 100, 'x', 'DisplayName', 'Poles', 'MarkerEdgeColor', 'r', 'LineWidth', 2);

% Plot the unit circle with better granularity for smoother appearance
theta = linspace(0, 2*pi, 1000);  % Angle from 0 to 2π
unit_circle = exp(1i * theta);   % Complex exponential for the unit circle
plot(real(unit_circle), imag(unit_circle), '--k', 'LineWidth', 1.5, 'DisplayName', 'Unit Circle');  % Dashed black line

% Add labels and formatting
grid on;
xlabel('Real Part');
ylabel('Imaginary Part');
title('Pole-Zero Plot of NTF');
legend('Zeros', 'Poles', 'Unit Circle', 'Location', 'Best');  % Add legend for unit circle
axis equal;  % Ensure equal scaling for x and y axes
xlim([-1.5, 1.5]);  % Optional: Adjust x-axis limits if needed for better visibility
ylim([-1.5, 1.5]);  % Optional: Adjust y-axis limits if needed for better visibility
hold off;


%% Bode plot
f = linspace(0, 0.5, N/2 + 1);
z = exp(2i * pi * f);
fig2 = figure(2);
plot(f, dbv(evalTF(H, z)), 'LineWidth', 2);

% Manually calculate RMS gain
f_range = linspace(0, 0.5/M, 1000);  % Frequency range from 0 to bandwidth (normalized)
z_range = exp(2i * pi * f_range);    % Frequency points on the unit circle
H_eval = evalTF(H, z_range);         % Evaluate the transfer function at these frequencies
rms_gain = sqrt(mean(abs(H_eval).^2));  % RMS of the magnitude response
sigma_H = 20 * log10(rms_gain);         % Convert to dB
disp(['RMS Gain (in dB): ', num2str(sigma_H)]);

xlabel('Frequency f/fs');
ylabel('Magnitude (dB)');
title('Bode Plot of NTF');
grid on;

%% Realize SDM
% [a, g, b, c] = realizeNTF(H, form);
% b(2:end) = 0;
% ABCD = stuffABCD(a, g, b, c, form);
% [ABCDs umax] = scaleABCD(ABCD);
% [a, g, b, c] = mapABCD(ABCDs, form);

form = 'CIFB';
swing = 0.5; %Amplifier output swing, Vp
umax = 0.9; %Scale system for inputs up to 0.9 of full-scale
[a,g,b,c] = realizeNTF(H,form);
b(2:end) = 0;
ABCD = stuffABCD(a,g,b,c,form);
ABCD = scaleABCD(ABCD,1+1,[],swing,[],umax);
[a,g,b,c] = mapABCD(ABCD,form);

disp('a coefficients:');
disp(a);

disp('g coefficients:');
disp(g);

disp('b coefficients:');
disp(b);

disp('c coefficients:');
disp(c);
%% Capacitor Sizing
% Compute capacitor sizes
Vdd = 1.8;
Vref = Vdd;
FullScale = Vdd;
DR = 100 +3; % Dynamic range in dB, plus 3-dB margin
k = 1.38e-23; T = 300; kT = k*T;
% First stage values based on kT/C noise
v_n2 = (FullScale/2)^2/2 / undbp(DR); % = kT/(osr*C1)
C1 = kT/(M*v_n2);
C2 = C1/b(1)*FullScale/1;

% Assume second-stage capacitor C4 is 10fF (example)
C4 = 10e-15;  % 10 femtofarads

C5 = C4 * Vref / a(2);
C3 = C5 * c(1);
% Yields C1=410f, C2=6.49p, C3=44f, C4=10f, C5=98f from reference book.

% Display capacitor values
fprintf('Capacitor C1: %.2e F\n', C1);
fprintf('Capacitor C2: %.2e F\n', C2);
fprintf('Capacitor C4: %.2e F\n', C4);
fprintf('Capacitor C3: %.2e F\n', C3);
fprintf('Capacitor C5: %.2e F\n', C5);

%% Simulate DSM with delsig toolbox
[v, xn, xmax, y] = simulateDSM(u, ABCD);

%% Time-domain plot of DSM with delsig toolbox
fig3 = figure(3);
tsamples = 0:2048;
stairs(tsamples, u(tsamples+1));
hold on;
stairs(tsamples, v(tsamples+1));
hold off;
axis([0 2048 -1.2 1.2]);
xlabel('Time t/T');
ylabel('Amplitude');
legend('u','v');
title('Second order \Sigma\Delta');

%% Spectral Anlysis, FFT
sq = abs(fft(v));

% Remove redundant half of spectrum and normalize to FS
f = [0:N/2-1]/N;  % frequency vector
FSR = 1;  % Full-scale range

sq_hlf = sq(1:end/2)*2/N/FSR;
sqdBFS = 20*log10(sq_hlf);

% log10(0) -> -inf/inf correction
sqdBFS(isinf(sqdBFS)) = -150;

% Calculate SNR
sigbin = 1 + cycles;
noise = [sq_hlf(1:sigbin-1), sq_hlf(sigbin+1:end)];
snr = 10*log10(sq_hlf(sigbin)^2/sum(noise.^2))





