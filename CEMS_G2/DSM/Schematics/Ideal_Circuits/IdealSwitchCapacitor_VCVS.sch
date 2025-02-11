v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 -530 280 -510 {
lab=GND}
N 280 -630 280 -590 {p1
lab=Vcm}
N 400 -530 400 -510 {
lab=GND}
N 400 -630 400 -590 {p1
lab=Vin}
N 220 -170 220 -150 {
lab=#net1}
N 150 -230 180 -230 {
lab=GND}
N 150 -230 150 -200 {
lab=GND}
N 150 -250 180 -250 {
lab=p1}
N 450 -170 450 -150 {
lab=#net2}
N 380 -230 410 -230 {
lab=GND}
N 380 -230 380 -200 {
lab=GND}
N 380 -250 410 -250 {
lab=p2}
N 150 -100 180 -100 {
lab=GND}
N 150 -100 150 -70 {
lab=GND}
N 150 -120 180 -120 {
lab=p2}
N 450 -90 450 -70 {
lab=Vcm}
N 380 -100 410 -100 {
lab=GND}
N 380 -100 380 -70 {
lab=GND}
N 380 -120 410 -120 {
lab=p1}
N 610 -290 640 -290 {lab=Vcm}
N 450 -330 450 -280 {lab=#net3}
N 590 -330 640 -330 {lab=#net3}
N 220 -170 280 -170 {lab=#net1}
N 220 -220 220 -170 {
lab=#net1}
N 340 -170 450 -170 {lab=#net2}
N 450 -220 450 -170 {
lab=#net2}
N 670 -400 680 -400 {lab=vo1}
N 590 -400 610 -400 {lab=#net3}
N 590 -400 590 -330 {lab=#net3}
N 450 -330 590 -330 {lab=#net3}
N 680 -350 680 -340 {lab=vo1}
N 80 -530 80 -510 {
lab=GND}
N 80 -630 80 -590 {p1
lab=VDD}
N 170 -530 170 -510 {
lab=GND}
N 170 -630 170 -590 {p1
lab=VSS}
N 680 -350 790 -350 {lab=vo1}
N 680 -400 680 -350 {lab=vo1}
N 980 -170 980 -150 {
lab=#net4}
N 910 -230 940 -230 {
lab=GND}
N 910 -230 910 -200 {
lab=GND}
N 910 -250 940 -250 {
lab=p1}
N 1210 -170 1210 -150 {
lab=#net5}
N 1140 -230 1170 -230 {
lab=GND}
N 1140 -230 1140 -200 {
lab=GND}
N 1140 -250 1170 -250 {
lab=p2}
N 910 -100 940 -100 {
lab=GND}
N 910 -100 910 -70 {
lab=GND}
N 910 -120 940 -120 {
lab=p2}
N 1210 -90 1210 -70 {
lab=Vcm}
N 1140 -100 1170 -100 {
lab=GND}
N 1140 -100 1140 -70 {
lab=GND}
N 1140 -120 1170 -120 {
lab=p1}
N 1370 -290 1400 -290 {lab=Vcm}
N 1210 -330 1210 -280 {lab=#net6}
N 1350 -330 1400 -330 {lab=#net6}
N 980 -170 1040 -170 {lab=#net4}
N 980 -220 980 -170 {
lab=#net4}
N 1100 -170 1210 -170 {lab=#net5}
N 1210 -220 1210 -170 {
lab=#net5}
N 1430 -400 1440 -400 {lab=vo2}
N 1350 -400 1370 -400 {lab=#net6}
N 1350 -400 1350 -330 {lab=#net6}
N 1210 -330 1350 -330 {lab=#net6}
N 1440 -350 1440 -340 {lab=vo2}
N 1440 -350 1550 -350 {lab=vo2}
N 1440 -400 1440 -350 {lab=vo2}
N 570 -520 570 -500 {
lab=GND}
N 570 -620 570 -580 {p1
lab=p1}
N 930 -520 930 -500 {
lab=GND}
N 930 -620 930 -580 {p1
lab=p2}
C {devices/gnd.sym} 280 -510 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 280 -560 0 0 {name=Vcm value="dc \{vdd/2\}"}
C {devices/gnd.sym} 400 -510 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 400 -560 0 0 {name=Vin value="dc 0.75 ac 1 "}
C {devices/switch_ngspice.sym} 220 -250 0 0 {name=S1 model=mysw}
C {devices/gnd.sym} 150 -200 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 150 -250 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 450 -250 0 0 {name=S2 model=mysw}
C {devices/gnd.sym} 380 -200 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 380 -250 0 0 {name=p3 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 220 -120 0 0 {name=S3 model=mysw}
C {devices/gnd.sym} 150 -70 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 150 -120 0 0 {name=p4 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 450 -120 0 0 {name=S4 model=mysw}
C {devices/gnd.sym} 380 -70 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 380 -120 0 0 {name=p5 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 610 -290 0 0 {name=p6 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 310 -170 3 0 {name=C7
m=1
value=0.3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 450 -70 0 0 {name=p8 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 640 -400 3 0 {name=C1
m=1
value=2.06p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 400 -630 0 0 {name=p15 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 220 -280 0 0 {name=p16 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 280 -630 0 0 {name=p17 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 790 -350 0 0 {name=p23 sig_type=std_logic lab=vo1}
C {devices/code_shown.sym} 1710 -120 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 1710 -470 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd = 1.5 
.model mysw SW vt=\{vdd/2\} ron=0.1
.option method=gear reltol=1e-4

.control
save all 
run
tran 40u 40u uic
plot vo1 vo2
set wr_singlescale
set wr_vecnames
wrdata IDEAL_SwitchCap.txt vo1 p1 p2
.endc
"}
C {devices/gnd.sym} 80 -510 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 80 -560 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} 80 -630 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 170 -510 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} 170 -560 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 170 -630 0 0 {name=l20 lab=VSS}
C {devices/title.sym} 280 90 0 0 {name=l21 author="(c) Hrishikesh, @HSB"}
C {devices/gnd.sym} 220 -90 0 0 {name=l1 lab=GND}
C {devices/switch_ngspice.sym} 980 -250 0 0 {name=S5 model=mysw}
C {devices/gnd.sym} 910 -200 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 910 -250 0 0 {name=p9 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 1210 -250 0 0 {name=S6 model=mysw}
C {devices/gnd.sym} 1140 -200 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 1140 -250 0 0 {name=p10 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 980 -120 0 0 {name=S7 model=mysw}
C {devices/gnd.sym} 910 -70 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 910 -120 0 0 {name=p11 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 1210 -120 0 0 {name=S8 model=mysw}
C {devices/gnd.sym} 1140 -70 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 1140 -120 0 0 {name=p12 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 1370 -290 0 0 {name=p13 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 1070 -170 3 0 {name=C2
m=1
value=0.21p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1210 -70 0 0 {name=p14 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 1400 -400 3 0 {name=C3
m=1
value=0.7p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 980 -280 0 0 {name=p18 sig_type=std_logic lab=vo1}
C {devices/lab_wire.sym} 1550 -350 0 0 {name=p19 sig_type=std_logic lab=vo2}
C {devices/gnd.sym} 980 -90 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 680 -280 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 1440 -280 0 0 {name=l23 lab=GND}
C {devices/vcvs.sym} 680 -310 2 1 {name=E2 value=1000}
C {devices/vcvs.sym} 1440 -310 2 1 {name=E1 value=1000}
C {devices/gnd.sym} 570 -500 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 570 -550 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100n, 100n, 2u, 4.5u) "}
C {devices/lab_wire.sym} 570 -620 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 930 -500 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 930 -550 0 0 {name=Vp2 value="dc 0 pulse(0, \{vdd\}, 2.25u, 100n, 100n, 2u, 4.5u)"}
C {devices/lab_wire.sym} 930 -620 0 0 {name=p1 sig_type=std_logic lab=p2}
