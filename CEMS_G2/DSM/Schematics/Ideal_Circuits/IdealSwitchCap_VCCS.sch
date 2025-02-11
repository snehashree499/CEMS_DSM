v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -710 320 -690 {
lab=GND}
N 320 -810 320 -770 {p1
lab=Vcm}
N 440 -710 440 -690 {
lab=GND}
N 440 -810 440 -770 {p1
lab=Vin}
N 220 -290 220 -270 {
lab=#net1}
N 150 -350 180 -350 {
lab=GND}
N 150 -350 150 -320 {
lab=GND}
N 150 -370 180 -370 {
lab=p1}
N 450 -290 450 -270 {
lab=#net2}
N 380 -350 410 -350 {
lab=GND}
N 380 -350 380 -320 {
lab=GND}
N 380 -370 410 -370 {
lab=p2}
N 150 -220 180 -220 {
lab=GND}
N 150 -220 150 -190 {
lab=GND}
N 150 -240 180 -240 {
lab=p2}
N 450 -210 450 -190 {
lab=Vcm}
N 380 -220 410 -220 {
lab=GND}
N 380 -220 380 -190 {
lab=GND}
N 380 -240 410 -240 {
lab=p1}
N 610 -410 640 -410 {lab=Vcm}
N 450 -450 450 -400 {lab=#net3}
N 590 -450 640 -450 {lab=#net3}
N 220 -290 280 -290 {lab=#net1}
N 220 -340 220 -290 {
lab=#net1}
N 340 -290 450 -290 {lab=#net2}
N 450 -340 450 -290 {
lab=#net2}
N 670 -520 680 -520 {lab=vo1}
N 590 -520 610 -520 {lab=#net3}
N 590 -520 590 -450 {lab=#net3}
N 450 -450 590 -450 {lab=#net3}
N 680 -470 680 -460 {lab=vo1}
N 120 -710 120 -690 {
lab=GND}
N 120 -810 120 -770 {p1
lab=VDD}
N 210 -710 210 -690 {
lab=GND}
N 210 -810 210 -770 {p1
lab=VSS}
N 680 -470 790 -470 {lab=vo1}
N 680 -520 680 -470 {lab=vo1}
N 980 -290 980 -270 {
lab=#net4}
N 910 -350 940 -350 {
lab=GND}
N 910 -350 910 -320 {
lab=GND}
N 910 -370 940 -370 {
lab=p1}
N 1210 -290 1210 -270 {
lab=#net5}
N 1140 -350 1170 -350 {
lab=GND}
N 1140 -350 1140 -320 {
lab=GND}
N 1140 -370 1170 -370 {
lab=p2}
N 910 -220 940 -220 {
lab=GND}
N 910 -220 910 -190 {
lab=GND}
N 910 -240 940 -240 {
lab=p2}
N 1210 -210 1210 -190 {
lab=Vcm}
N 1140 -220 1170 -220 {
lab=GND}
N 1140 -220 1140 -190 {
lab=GND}
N 1140 -240 1170 -240 {
lab=p1}
N 1370 -410 1400 -410 {lab=Vcm}
N 1210 -450 1210 -400 {lab=#net6}
N 1350 -450 1400 -450 {lab=#net6}
N 980 -290 1040 -290 {lab=#net4}
N 980 -340 980 -290 {
lab=#net4}
N 1100 -290 1210 -290 {lab=#net5}
N 1210 -340 1210 -290 {
lab=#net5}
N 1430 -520 1440 -520 {lab=vo2}
N 1350 -520 1370 -520 {lab=#net6}
N 1350 -520 1350 -450 {lab=#net6}
N 1210 -450 1350 -450 {lab=#net6}
N 1440 -470 1440 -460 {lab=vo2}
N 1440 -470 1550 -470 {lab=vo2}
N 1440 -520 1440 -470 {lab=vo2}
N 580 -710 580 -690 {
lab=GND}
N 580 -810 580 -770 {p1
lab=p1}
N 940 -710 940 -690 {
lab=GND}
N 940 -810 940 -770 {p1
lab=p2}
C {devices/gnd.sym} 320 -690 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 320 -740 0 0 {name=Vcm value="dc \{vdd/2\}"}
C {devices/gnd.sym} 440 -690 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 440 -740 0 0 {name=Vin value="dc 0.75 ac 1 "}
C {devices/switch_ngspice.sym} 220 -370 0 0 {name=S1 model=mysw}
C {devices/gnd.sym} 150 -320 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 150 -370 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 450 -370 0 0 {name=S2 model=mysw}
C {devices/gnd.sym} 380 -320 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 380 -370 0 0 {name=p3 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 220 -240 0 0 {name=S3 model=mysw}
C {devices/gnd.sym} 150 -190 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 150 -240 0 0 {name=p4 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 450 -240 0 0 {name=S4 model=mysw}
C {devices/gnd.sym} 380 -190 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 380 -240 0 0 {name=p5 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 610 -410 0 0 {name=p6 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 310 -290 3 0 {name=C7
m=1
value=0.3p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 450 -190 0 0 {name=p8 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 640 -520 3 0 {name=C1
m=1
value=2.06p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 440 -810 0 0 {name=p15 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 220 -400 0 0 {name=p16 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 320 -810 0 0 {name=p17 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 790 -470 0 0 {name=p23 sig_type=std_logic lab=vo1}
C {devices/code_shown.sym} 1790 -290 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 1800 -670 0 0 {name=NGSPICE only_toplevel=true 
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
C {devices/gnd.sym} 120 -690 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 120 -740 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} 120 -810 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 210 -690 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} 210 -740 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 210 -810 0 0 {name=l20 lab=VSS}
C {devices/title.sym} 320 50 0 0 {name=l21 author="(c) Hrishikesh, @HSB"}
C {devices/gnd.sym} 220 -210 0 0 {name=l1 lab=GND}
C {devices/switch_ngspice.sym} 980 -370 0 0 {name=S5 model=mysw}
C {devices/gnd.sym} 910 -320 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 910 -370 0 0 {name=p9 sig_type=std_logic lab=p1}
C {devices/switch_ngspice.sym} 1210 -370 0 0 {name=S6 model=mysw}
C {devices/gnd.sym} 1140 -320 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 1140 -370 0 0 {name=p10 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 980 -240 0 0 {name=S7 model=mysw}
C {devices/gnd.sym} 910 -190 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 910 -240 0 0 {name=p11 sig_type=std_logic lab=p2}
C {devices/switch_ngspice.sym} 1210 -240 0 0 {name=S8 model=mysw}
C {devices/gnd.sym} 1140 -190 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} 1140 -240 0 0 {name=p12 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 1370 -410 0 0 {name=p13 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 1070 -290 3 0 {name=C2
m=1
value=0.2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1210 -190 0 0 {name=p14 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 1400 -520 3 0 {name=C3
m=1
value=0.7p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 980 -400 0 0 {name=p18 sig_type=std_logic lab=vo1}
C {devices/lab_wire.sym} 1550 -470 0 0 {name=p19 sig_type=std_logic lab=vo2}
C {devices/gnd.sym} 980 -210 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 680 -400 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 1440 -400 0 0 {name=l23 lab=GND}
C {vccs.sym} 680 -430 2 1 {name=G1 value=10e-06}
C {vccs.sym} 1440 -430 2 1 {name=G2 value=10e-06}
C {devices/gnd.sym} 580 -690 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 580 -740 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100n, 100n, 2u, 4.5u) "}
C {devices/lab_wire.sym} 580 -810 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 940 -690 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 940 -740 0 0 {name=Vp2 value="dc 0 pulse(0, \{vdd\}, 2.25u, 100n, 100n, 2u, 4.5u)"}
C {devices/lab_wire.sym} 940 -810 0 0 {name=p1 sig_type=std_logic lab=p2}
