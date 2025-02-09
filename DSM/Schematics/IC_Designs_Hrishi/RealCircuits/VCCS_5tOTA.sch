v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -180 -90 -160 {
lab=GND}
N -10 -180 -10 -160 {
lab=GND}
N -10 -260 -10 -240 {
lab=v_ss}
N 440 -710 480 -710 {
lab=v_dd}
N 290 -480 360 -480 {
lab=Minus}
N -10 -260 490 -260 {
lab=v_ss}
N 480 -710 480 -690 {
lab=v_dd}
N 480 -630 480 -590 {
lab=#net1}
N -90 -640 440 -640 {
lab=v_dd}
N -90 -640 -90 -240 {
lab=v_dd}
N 440 -710 440 -640 {
lab=v_dd}
N 490 -460 490 -260 {lab=v_ss}
N 290 -510 360 -510 {lab=#net1}
N 290 -590 290 -510 {lab=#net1}
N 290 -590 480 -590 {lab=#net1}
N 440 -640 440 -560 {lab=v_dd}
N 440 -560 490 -560 {lab=v_dd}
N 660 -510 710 -510 {lab=Vout}
C {devices/vsource.sym} -90 -210 0 0 {name=Vdd value=1.5
}
C {devices/gnd.sym} -90 -160 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -90 -260 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} -10 -210 0 0 {name=Vss value=0}
C {devices/gnd.sym} -10 -160 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -10 -260 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {isource.sym} 480 -660 0 0 {name=I0 value= 3u}
C {ipin.sym} 290 -480 0 0 {name=p7 lab=Minus}
C {opin.sym} 710 -510 0 0 {name=p8 lab=Vout}
C {ipin.sym} 360 -540 0 0 {name=p3 lab=Plus}
C {/foss/designs/CEMS_DSM/DSM/Schematics/IC_Designs_Hrishi/RealCircuits/5-T_OTA/5-T_OTA.sym} 510 -510 0 0 {name=x1}
