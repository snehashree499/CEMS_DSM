v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 -140 110 -120 {
lab=GND}
N 190 -140 190 -120 {
lab=GND}
N 190 -220 190 -200 {
lab=v_ss}
N 640 -670 680 -670 {
lab=v_dd}
N 490 -440 560 -440 {
lab=Minus}
N 190 -220 690 -220 {
lab=v_ss}
N 680 -670 680 -650 {
lab=v_dd}
N 680 -590 680 -550 {
lab=#net1}
N 110 -600 640 -600 {
lab=v_dd}
N 110 -600 110 -200 {
lab=v_dd}
N 640 -670 640 -600 {
lab=v_dd}
N 690 -420 690 -220 {lab=v_ss}
N 490 -470 560 -470 {lab=#net1}
N 490 -550 490 -470 {lab=#net1}
N 490 -550 680 -550 {lab=#net1}
N 640 -600 640 -520 {lab=v_dd}
N 640 -520 680 -520 {lab=v_dd}
N 680 -420 690 -420 {lab=v_ss}
N 860 -470 910 -470 {lab=Vout}
C {devices/vsource.sym} 110 -170 0 0 {name=Vdd value=1.5
}
C {devices/gnd.sym} 110 -120 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 110 -220 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 190 -170 0 0 {name=Vss value=0}
C {devices/gnd.sym} 190 -120 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 190 -220 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {isource.sym} 680 -620 0 0 {name=I0 value= 0.8u}
C {ipin.sym} 490 -440 0 0 {name=p7 lab=Minus}
C {opin.sym} 910 -470 0 0 {name=p8 lab=Vout}
C {ipin.sym} 560 -500 0 0 {name=p3 lab=Plus}
C {/foss/designs/CEMS_DSM/DSM/Schematics/RealCircuits//Folded Cascode/FoldedCascodeOTA.sym} 710 -470 0 0 {name=x1}
