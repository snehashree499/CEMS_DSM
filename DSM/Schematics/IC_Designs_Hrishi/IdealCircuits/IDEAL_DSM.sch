v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {comparator} 1810 -580 0 0 0.4 0.4 {}
N 170 -680 170 -660 {
lab=GND}
N 170 -780 170 -740 {p1
lab=Vcm}
N 290 -680 290 -660 {
lab=GND}
N 290 -780 290 -740 {p1
lab=Vin}
N 450 -680 450 -660 {
lab=GND}
N 450 -780 450 -740 {p1
lab=p1}
N 810 -680 810 -660 {
lab=GND}
N 810 -780 810 -740 {p1
lab=p2}
N 220 -280 220 -260 {
lab=#net1}
N 150 -340 180 -340 {
lab=GND}
N 150 -340 150 -310 {
lab=GND}
N 150 -360 180 -360 {
lab=p1}
N 450 -280 450 -260 {
lab=#net2}
N 380 -340 410 -340 {
lab=GND}
N 380 -340 380 -310 {
lab=GND}
N 380 -360 410 -360 {
lab=p2}
N 220 -200 220 -50 {
lab=#net3}
N 150 -210 180 -210 {
lab=GND}
N 150 -210 150 -180 {
lab=GND}
N 150 -230 180 -230 {
lab=p2}
N 450 -200 450 -180 {
lab=Vcm}
N 380 -210 410 -210 {
lab=GND}
N 380 -210 380 -180 {
lab=GND}
N 380 -230 410 -230 {
lab=p1}
N 610 -400 640 -400 {lab=Vcm}
N 450 -440 450 -390 {lab=#net4}
N 590 -440 640 -440 {lab=#net4}
N 220 -280 280 -280 {lab=#net1}
N 220 -330 220 -280 {
lab=#net1}
N 340 -280 450 -280 {lab=#net2}
N 450 -330 450 -280 {
lab=#net2}
N 670 -510 680 -510 {lab=vo1}
N 680 -460 680 -450 {lab=vo1}
N 590 -510 610 -510 {lab=#net4}
N 590 -510 590 -440 {lab=#net4}
N 450 -440 590 -440 {lab=#net4}
N 860 -280 860 -260 {
lab=#net5}
N 790 -340 820 -340 {
lab=GND}
N 790 -340 790 -310 {
lab=GND}
N 790 -360 820 -360 {
lab=p1}
N 1090 -280 1090 -260 {
lab=#net6}
N 1020 -340 1050 -340 {
lab=GND}
N 1020 -340 1020 -310 {
lab=GND}
N 1020 -360 1050 -360 {
lab=p2}
N 860 -200 860 -50 {
lab=#net3}
N 790 -210 820 -210 {
lab=GND}
N 790 -210 790 -180 {
lab=GND}
N 790 -230 820 -230 {
lab=p2}
N 1090 -200 1090 -180 {
lab=Vcm}
N 1020 -210 1050 -210 {
lab=GND}
N 1020 -210 1020 -180 {
lab=GND}
N 1020 -230 1050 -230 {
lab=p1}
N 1250 -400 1280 -400 {lab=Vcm}
N 1090 -440 1090 -390 {lab=#net7}
N 1230 -440 1280 -440 {lab=#net7}
N 860 -280 920 -280 {lab=#net5}
N 860 -330 860 -280 {
lab=#net5}
N 980 -280 1090 -280 {lab=#net6}
N 1090 -330 1090 -280 {
lab=#net6}
N 1310 -510 1320 -510 {lab=vo2}
N 1320 -460 1320 -440 {lab=vo2}
N 1230 -510 1250 -510 {lab=#net7}
N 1230 -510 1230 -440 {lab=#net7}
N 1090 -440 1230 -440 {lab=#net7}
N 680 -460 860 -460 {lab=vo1}
N 680 -510 680 -460 {lab=vo1}
N 860 -460 860 -390 {lab=vo1}
N 220 -50 860 -50 {lab=#net3}
N 860 -50 1300 -50 {lab=#net3}
N 1500 -440 1500 -420 {
lab=vcmp}
N 1500 -390 1500 -330 {
lab=GND}
N 1380 -470 1380 -460 {lab=vo2}
N 1320 -460 1380 -460 {lab=vo2}
N 1320 -510 1320 -460 {lab=vo2}
N 920 -470 920 -460 {lab=vo1}
N 860 -460 920 -460 {lab=vo1}
N 1200 -670 1200 -650 {
lab=GND}
N 1200 -770 1200 -730 {p1
lab=resb}
N -30 -680 -30 -660 {
lab=GND}
N -30 -780 -30 -740 {p1
lab=VDD}
N 60 -680 60 -660 {
lab=GND}
N 60 -780 60 -740 {p1
lab=VSS}
N 1540 -440 1540 -50 {lab=vcmp}
N 1500 -440 1540 -440 {
lab=vcmp}
N 1380 -50 1540 -50 {lab=vcmp}
C {devices/gnd.sym} 170 -660 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 170 -710 0 0 {name=Vcm value="dc \{vdd/2\}"}
C {devices/gnd.sym} 290 -660 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 290 -710 0 0 {name=Vin value="dc 0.75 "}
C {devices/gnd.sym} 450 -660 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 450 -710 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100n, 100n, 2u, 4.5u) "}
C {devices/lab_wire.sym} 450 -780 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 810 -660 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 810 -710 0 0 {name=Vp2 value="dc 0 pulse(0, \{vdd\}, 2.25u, 100n, 100n, 2u, 4.5u)"}
C {devices/lab_wire.sym} 810 -780 0 0 {name=p1 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 220 -360 0 0 {name=S1 model=mysw}
C {devices/gnd.sym} 150 -310 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 150 -360 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 450 -360 0 0 {name=S2 model=mysw}
C {devices/gnd.sym} 380 -310 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 380 -360 0 0 {name=p3 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 220 -230 0 0 {name=S3 model=mysw}
C {devices/gnd.sym} 150 -180 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 150 -230 0 0 {name=p4 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 450 -230 0 0 {name=S4 model=mysw}
C {devices/gnd.sym} 380 -180 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 380 -230 0 0 {name=p5 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 610 -400 0 0 {name=p6 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 310 -280 3 0 {name=C7
m=1
value=0.3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 450 -180 0 0 {name=p8 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 640 -510 3 0 {name=C1
m=1
value=2.06p
footprint=1206
device="ceramic capacitor"}
C {devices/switch_ngspice.sym} 860 -360 0 0 {name=S5 model=mysw}
C {devices/gnd.sym} 790 -310 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 790 -360 0 0 {name=p9 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 1090 -360 0 0 {name=S6 model=mysw}
C {devices/gnd.sym} 1020 -310 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 1020 -360 0 0 {name=p10 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 860 -230 0 0 {name=S7 model=mysw}
C {devices/gnd.sym} 790 -180 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 790 -230 0 0 {name=p11 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 1090 -230 0 0 {name=S8 model=mysw}
C {devices/gnd.sym} 1020 -180 0 0 {name=l18 lab=GND}
C {devices/lab_wire.sym} 1020 -230 0 0 {name=p12 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 1250 -400 0 0 {name=p13 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 950 -280 3 0 {name=C2
m=1
value=0.2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1090 -180 0 0 {name=p14 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 1280 -510 3 0 {name=C3
m=1
value=0.7p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 290 -780 0 0 {name=p15 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 220 -390 0 0 {name=p16 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 170 -780 0 0 {name=p17 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 1500 -330 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1500 -390 0 0 {name=E3 value="TABLE \{V(vo2,0)\} = (-0.1mV, 0V) (0.1mV, \{vdd\})"}
C {devices/lab_wire.sym} 1500 -440 0 0 {name=p19 sig_type=std_logic lab=vcmp}
C {devices/lab_wire.sym} 1380 -470 0 0 {name=p22 sig_type=std_logic lab=vo2}
C {devices/lab_wire.sym} 920 -470 0 0 {name=p23 sig_type=std_logic lab=vo1}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1340 -50 0 1 {name=x2 VDD=1.5 VSS=0 prefix=sg13g2_ }
C {devices/gnd.sym} 1200 -650 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 1200 -700 0 0 {name=Vresb value="dc 0 pwl(0, 0, \{per/2\}, 0, \{per/2+100p\} \{vdd\}"}
C {devices/lab_wire.sym} 1200 -770 0 0 {name=p25 sig_type=std_logic lab=resb}
C {devices/gnd.sym} -30 -660 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -30 -710 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} -30 -780 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 60 -660 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} 60 -710 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 60 -780 0 0 {name=l20 lab=VSS}
C {devices/title.sym} 270 170 0 0 {name=l21 author="(c) Hrishikesh, @HSB"}
C {devices/gnd.sym} 750 -400 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 1380 -400 0 0 {name=l23 lab=GND}
C {vccs.sym} 680 -420 0 0 {name=G1 value=1e-4}
C {devices/gnd.sym} 680 -390 0 0 {name=l1 lab=GND}
C {vccs.sym} 1320 -420 0 0 {name=G2 value=1e-4}
C {devices/gnd.sym} 1320 -390 0 0 {name=l9 lab=GND}
C {devices/code_shown.sym} 1640 90 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 1840 -300 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.param temp=27 vdd = 1.5 per=1u
.model mysw SW vt=\{vdd/2\} ron=0.1
.option method=gear reltol=1e-4

.control
save all 
run
tran 45m 45m uic
plot vcmp
set wr_singlescale
set wr_vecnames
wrdata IDEAL_SwitchCap.txt vo1 p1 p2
.endc
"}
