v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 720 -470 720 -450 {
lab=GND}
N 800 -470 800 -450 {
lab=GND}
N 800 -550 800 -530 {
lab=v_ss}
N 1670 -700 1670 -550 {
lab=v_ss}
N 1470 -800 1470 -680 {
lab=v_out}
N 1100 -680 1470 -680 {
lab=v_out}
N 1100 -770 1100 -680 {
lab=v_out}
N 1100 -770 1170 -770 {
lab=v_out}
N 900 -680 900 -550 {
lab=v_ss}
N 800 -550 900 -550 {
lab=v_ss}
N 900 -830 900 -740 {
lab=v_in}
N 900 -830 1170 -830 {
lab=v_in}
N 1300 -550 1670 -550 {
lab=v_ss}
N 1300 -750 1300 -550 {lab=v_ss}
N 900 -550 1300 -550 {
lab=v_ss}
N 1100 -800 1170 -800 {lab=#net1}
N 1100 -880 1100 -800 {lab=#net1}
N 1470 -800 1670 -800 {lab=v_out}
N 1670 -800 1670 -760 {lab=v_out}
N 720 -940 720 -530 {lab=v_dd}
N 720 -940 1300 -940 {lab=v_dd}
N 1300 -940 1300 -850 {lab=v_dd}
C {devices/vsource.sym} 720 -500 0 0 {name=Vdd value=1.5
}
C {devices/gnd.sym} 720 -450 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 720 -550 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 800 -500 0 0 {name=Vss value=0}
C {devices/gnd.sym} 800 -450 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 800 -550 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1670 -730 0 0 {name=C1
value=0.47pf}
C {lab_wire.sym} 1670 -800 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 900 -710 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 960 -830 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1100 -910 0 0 {name=I0 value= 0.8u}
C {spice_probe.sym} 1020 -830 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1520 -800 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 200 -280 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 200 -360 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/title.sym} 250 -60 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {devices/code_shown.sym} 60 -1120 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write tb_5-T_OTA_ac.raw
set appendwrite

ac dec 101 1k 1G
write tb_5-T_OTA_ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror



plot 180/pi*ph(v_out) vs frequency

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {/foss/designs/CEMS_DSM/DSM/Schematics/IC_Designs_Hrishi/RealCircuits/5-T_OTA/5-T_OTA.sym} 1320 -800 0 0 {name=x1}
