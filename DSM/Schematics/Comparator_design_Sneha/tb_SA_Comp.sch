v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -320 -180 -320 -160 {
lab=GND}
N -460 130 -460 170 {p1
lab=VDD}
N -550 130 -550 170 {p1
lab=VSS}
N -360 100 -260 100 {
lab=#net1}
N -260 -20 -260 40 {lab=#net2}
N -40 -150 -40 -90 {lab=VDD}
N -40 30 -40 100 {lab=VSS}
N -360 -60 -190 -60 {lab=#net3}
N -360 -60 -360 40 {lab=#net3}
N -260 -20 -190 -20 {lab=#net2}
N -320 -280 -320 -230 {lab=p1}
N 110 -70 140 -70 {lab=OP}
C {devices/lab_wire.sym} 140 -70 0 1 {name=p4 sig_type=std_logic lab=OP}
C {devices/gnd.sym} -320 -160 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -320 -200 0 0 {name=p5 value="dc 0 pulse(0, \{vdd\}, 5n, 100p, 100p, \{per/2-5n\}, \{per\}) "}
C {devices/lab_wire.sym} -320 -280 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} -190 10 0 0 {name=p3 sig_type=std_logic lab=p1}
C {devices/gnd.sym} -460 230 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -460 200 0 0 {name=VDD value="dc \{vdd\}"}
C {devices/vdd.sym} -460 130 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -550 230 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -550 200 0 0 {name=VSS value="dc 0"}
C {devices/vdd.sym} -550 130 0 0 {name=l5 lab=VSS}
C {devices/gnd.sym} 110 0 0 0 {name=l12 lab=GND}
C {devices/code_shown.sym} -450 370 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 160 -160 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 per=20n vdd=1.2 vic=0.6 vid=100m 
.option method=gear reltol=1e-4

* Power Supplies
* VDD VDD 0 DC \{vdd\}
* VSS VSS 0 0

* Clock Signal
Vclk p1 0 PULSE(0 \{vdd\} 5n 100p 100p \{per/2-5n\} \{per\})

* Differential Inputs
* Vp PLUS 0 DC \{vic+vid/2\}
* Vm MINUS 0 Dc \{vic-vid/2\}

* Output Load Capacitors
C_OP OP 0 49f
C_ON ON 0 49f

*.tran 1p \{5*per\}
.control 
tran 10n 60u uic

alterparam vid=-100m
reset
*tran 100p 20m
plot v(OP) v(ON) v(PLUS) v(MINUS) 
.endc
"}
C {devices/vsource.sym} -310 130 0 0 {name=Vic value="dc \{vic\}"}
C {devices/gnd.sym} -310 160 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} -360 70 0 0 {name=Vm value="dc \{-vid/2\}"}
C {devices/vsource.sym} -260 70 0 0 {name=Vp value="dc \{+vid/2\}"}
C {devices/lab_wire.sym} -40 -150 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -40 100 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {SRLatch_Comparator.sym} -40 -30 0 0 {name=x1}
