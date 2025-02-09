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
N 610 -410 660 -410 {lab=Vcm}
N 450 -450 450 -400 {lab=#net3}
N 590 -450 660 -450 {lab=#net3}
N 220 -290 280 -290 {lab=#net1}
N 220 -340 220 -290 {
lab=#net1}
N 340 -290 450 -290 {lab=#net2}
N 450 -340 450 -290 {
lab=#net2}
N 670 -520 800 -520 {lab=vo1}
N 590 -520 610 -520 {lab=#net3}
N 590 -520 590 -450 {lab=#net3}
N 450 -450 590 -450 {lab=#net3}
N -30 -690 -30 -670 {
lab=GND}
N -30 -790 -30 -750 {p1
lab=VDD}
N 60 -690 60 -670 {
lab=GND}
N 60 -790 60 -750 {p1
lab=VSS}
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
N 1370 -410 1410 -410 {lab=Vcm}
N 1210 -450 1210 -400 {lab=#net6}
N 1350 -450 1410 -450 {lab=#net6}
N 980 -290 1040 -290 {lab=#net4}
N 980 -340 980 -290 {
lab=#net4}
N 1100 -290 1210 -290 {lab=#net5}
N 1210 -340 1210 -290 {
lab=#net5}
N 1430 -520 1550 -520 {lab=vo2}
N 1350 -520 1370 -520 {lab=#net6}
N 1350 -520 1350 -450 {lab=#net6}
N 1210 -450 1350 -450 {lab=#net6}
N 1410 -420 1410 -410 {lab=Vcm}
N 1410 -450 1410 -440 {lab=#net6}
N 660 -450 660 -440 {lab=#net3}
N 660 -420 660 -410 {lab=Vcm}
N 1550 -430 1630 -430 {lab=vo2}
N 800 -520 800 -430 {lab=vo1}
N 1550 -520 1550 -430 {lab=vo2}
N 750 -430 800 -430 {lab=vo1}
N 800 -430 870 -430 {lab=vo1}
N 1500 -430 1550 -430 {lab=vo2}
N 440 -690 440 -670 {
lab=GND}
N 440 -790 440 -750 {p1
lab=p1}
N 800 -690 800 -670 {
lab=GND}
N 800 -790 800 -750 {p1
lab=p2}
C {devices/gnd.sym} 170 -670 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 170 -720 0 0 {name=Vcm value="dc \{vdd/2\}"}
C {devices/gnd.sym} 290 -670 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 290 -720 0 0 {name=Vin value="dc 0.75 ac 1 "}
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
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 290 -790 0 0 {name=p15 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 220 -400 0 0 {name=p16 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 170 -790 0 0 {name=p17 sig_type=std_logic lab=Vcm}
C {devices/lab_wire.sym} 870 -430 0 1 {name=p23 sig_type=std_logic lab=vo1}
C {devices/code_shown.sym} 2130 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 2130 -620 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd = 1.5
.model mysw SW vt=\{vdd/2\} ron=0.1
.option method=gear reltol=1e-4

.control
save all 
run
tran 40m 40m uic
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
C {devices/lab_wire.sym} 1630 -430 0 1 {name=p19 sig_type=std_logic lab=vo2}
C {devices/gnd.sym} 980 -210 0 0 {name=l17 lab=GND}
C {/foss/designs/DSM/Designs_Hrishi/STAGE.sym} 810 -430 0 0 {name=x1}
C {/foss/designs/DSM/Designs_Hrishi/STAGE.sym} 1560 -430 0 0 {name=x2}
C {devices/gnd.sym} 440 -670 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 440 -720 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100n, 100n, 2u, 4.5u) "}
C {devices/lab_wire.sym} 440 -790 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 800 -670 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 800 -720 0 0 {name=Vp2 value="dc 0 pulse(0, \{vdd\}, 2.25u, 100n, 100n, 2u, 4.5u)"}
C {devices/lab_wire.sym} 800 -790 0 0 {name=p1 sig_type=std_logic lab=p2}
