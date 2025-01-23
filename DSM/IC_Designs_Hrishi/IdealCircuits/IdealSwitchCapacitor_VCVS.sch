v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 -690 170 -670 {
lab=GND}
N 170 -790 170 -750 {p1
lab=Vcm}
N 290 -690 290 -670 {
lab=GND}
N 290 -790 290 -750 {p1
lab=Vin}
N 450 -690 450 -670 {
lab=GND}
N 450 -790 450 -750 {p1
lab=p1}
N 810 -690 810 -670 {
lab=GND}
N 810 -790 810 -750 {p1
lab=p2}
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
N 1200 -680 1200 -660 {
lab=GND}
N 1200 -780 1200 -740 {p1
lab=resb}
N -30 -690 -30 -670 {
lab=GND}
N -30 -790 -30 -750 {p1
lab=VDD}
N 60 -690 60 -670 {
lab=GND}
N 60 -790 60 -750 {p1
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
C {devices/gnd.sym} 170 -670 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 170 -720 0 0 {name=Vcm value="dc \{vdd/2\}"}
C {devices/gnd.sym} 290 -670 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 290 -720 0 0 {name=Vin value="dc 0.75 ac 1 "}
C {devices/gnd.sym} 450 -670 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 450 -720 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 5n, 100p, 100p, \{per/2-5n\}, \{per\}) "}
C {devices/lab_wire.sym} 450 -790 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 810 -670 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 810 -720 0 0 {name=Vp2 value="dc \{vdd\} pulse(\{vdd\}, 0, 0, 100p, 100p, \{per/2+5n\}, \{per\})"}
C {devices/lab_wire.sym} 810 -790 0 0 {name=p1 sig_type=std_logic lab=p2}
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
value=410f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 450 -190 0 0 {name=p8 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 640 -520 3 0 {name=C1
m=1
value=6.49p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 290 -790 0 0 {name=p15 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 220 -400 0 0 {name=p16 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 170 -790 0 0 {name=p17 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 790 -470 0 0 {name=p23 sig_type=std_logic lab=vo1}
C {devices/gnd.sym} 1200 -660 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} 1200 -710 0 0 {name=Vresb value="dc 0 pwl(0, 0, \{per/2\}, 0, \{per/2+100p\} \{vdd\}"}
C {devices/lab_wire.sym} 1200 -780 0 0 {name=p25 sig_type=std_logic lab=resb}
C {devices/code_shown.sym} 2130 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 2130 -620 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd = 1.8 per=1u
.model mysw SW vt=\{vdd/2\} ron=0.1
.option method=gear reltol=1e-4

.control
save all 
run
tran 10n 30u
plot vo1 vo2
set wr_singlescale
set wr_vecnames
wrdata IDEAL_SwitchCap.txt vo1 p1 p2
.endc
"}
C {devices/gnd.sym} -30 -670 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -30 -720 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} -30 -790 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 60 -670 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} 60 -720 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 60 -790 0 0 {name=l20 lab=VSS}
C {devices/title.sym} 270 160 0 0 {name=l21 author="(c) Hrishikesh, @HSB"}
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
value=54f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1210 -190 0 0 {name=p14 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 1400 -520 3 0 {name=C3
m=1
value=98f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 980 -400 0 0 {name=p18 sig_type=std_logic lab=vo1}
C {devices/lab_wire.sym} 1550 -470 0 0 {name=p19 sig_type=std_logic lab=vo2}
C {devices/gnd.sym} 980 -210 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 680 -400 0 0 {name=l22 lab=GND}
C {devices/gnd.sym} 1440 -400 0 0 {name=l23 lab=GND}
C {devices/vcvs.sym} 680 -430 0 0 {name=E2 value=-1000}
C {devices/vcvs.sym} 1440 -430 0 0 {name=E1 value=-1000}
