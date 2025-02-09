%% Switch Capacitor using OTA for 2nd Order DSM, (c) Hrishikesh, @HSB
clc
clear all



%% Calibration of test system
L = 2;                % Order of modulator
form = 'CIFB';        % Cascade of integrator feedback
opt = 0;              % No optimisation
nLev = 2;             % Quantizer level
fs = 220e3;           % Sampling frequency
Ts = 1/fs;            % Sampling time
M = 512;              % OSR
N = 16*M;             % Simulation length (output samples), FFT points
fB = fs/2/M;          % Bandwidth
cycles = 9;           % Number of sinusoids
fx = cycles * fs/N;   % Test tone
A = 0.8;              % Signal amplitude
t = Ts * [0:N-1];
u = A * sin(2 * pi * fx/fs * [0:N-1]);

%% Design NTF
H = synthesizeNTF(L, M, opt, 2);

[a, g, b, c] = realizeNTF(H, form);
b(2:end) = 0;
ABCD = stuffABCD(a, g, b, c, form);
[ABCDs umax] = scaleABCD(ABCD);
[a, g, b, c] = mapABCD(ABCDs, form);

disp('a coefficients:');
disp(a);

disp('g coefficients:');
disp(g);

disp('b coefficients:');
disp(b);

disp('c coefficients:');
disp(c);

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
saveas(gcf, '_fig_NTF.svg')
%% Simulink
mdl = 'dsm_l2_sim';
%load_system(mdl);
open_system(mdl);

%sigIn.time = ([0:N-1]/fs)';
%sigIn.signals(1).values = u';
%sigIn.signals(1).dimensions = 1;

% Solver options
simoptions=simset( ...
    'Solver', 'FixedStepDiscrete', ...
    'RelTol', 1e-3, ...
    'MaxStep', Ts);

[t_, u_, simout] = sim(mdl, max(t), simoptions, [t', u']);
    % 'SaveOutput','on','OutputSaveName','yout');

%% Post-processing Simulink, quantizer gains
y = simout(:,1)'; % prime to adapt dimension
v = simout(:,2)'; % prime to adapt dimension
%y = simOut.yout.get('y').Values.Data';
%v = simOut.yout.get('v').Values.Data';
k = (v*y')/(y*y');

%% Spectral analysis, lec. 3 slides
sq = abs(fft(v));

% Remove redundant half of spectrum and normalize to FS
f = [0:N/2-1]/N;  % frequency vector
z = exp(2i*pi*f);

sq_hlf = sq(1:end/2)/(N/2);
sqdBFS = 20*log10(sq_hlf);

% log10(0) -> -inf/inf correction
sqdBFS(isinf(sqdBFS)) = -150;

% Generate the magnitude plot with annotation
fig4 = figure(4);
set(gca, 'fontsize', 14);
plot(f, sqdBFS, 'linewidth', 2);
axis([0 0.06 -150 0]);
xlabel('Frequency f/fs')
ylabel('DFT Magnitude in dBFS')
grid;
saveas(gcf, '_fig_spectral_analysis1.svg')

%% Spectral analysis, delsig toolbox

% Normalize magnitudes to full-scale (FS=nLev-1=1) 
sqFS = sq/(N/2);

fig5 = figure(5);
plot(f, dbv(sqFS(1:end/2)));
axis([0 0.06 -150 0]);
grid on;
ylabel('dBFS');
xlabel('f/fs')
saveas(gcf, '_fig_spectral_analysis2.svg')

%% Windowed plot
specHW = fft(v.*ds_hann(N))/(N/4);

fig6 = figure(6);
plot(f, dbv(specHW(1:end/2)));
axis([0 0.06 -150 0]);
grid on;
ylabel('dBFS');
xlabel('f/fs');
saveas(gcf, '_fig_windowedplot.svg')



%% Capacitor Sizing
% Compute capacitor sizes
Vdd = 1.5;
Vref = Vdd;
FullScale = Vdd;
DR = 98 +3; % Dynamic range in dB, plus 3-dB margin
k = 1.38e-23; T = 300; kT = k*T;
% First stage values based on kT/C noise
v_n2 = ((FullScale/2)^2)/2 / undbp(DR); % = kT/(osr*C1)
fprintf('mean squared noise: %.2e \n', v_n2);

C1 = kT/(M*v_n2);
C2 = C1/b(1)*FullScale/1;

% Assume second-stage capacitor C4 is 10fF (example)
C4 = 0.1e-12;  % 10 picofarads

C5 = C4 * Vref / a(2);
C3 = C5 * c(1);
% Yields C1: 3.62e-13 F, C2: 2.06e-12 F, C4: 1.00e-14 F, C3: 2.17e-14 F, C5: 7.02e-14 F from reference book.


% Display capacitor values
fprintf('Capacitor C1: %.2e F\n', C1);
fprintf('Capacitor C2: %.2e F\n', C2);
fprintf('Capacitor C4: %.2e F\n', C4);
fprintf('Capacitor C3: %.2e F\n', C3);
fprintf('Capacitor C5: %.2e F\n', C5);








