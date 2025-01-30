v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {@name} -45 -162 0 0 0.2 0.2 {}
N -30 -110 40 -110 {lab=outm}
N -30 -90 40 -90 {lab=outp}
N -30 -70 20 -70 {lab=GND}
N 20 -70 20 -40 {lab=GND}
N 180 -80 180 -40 {lab=GND}
N -30 -140 180 -140 {lab=#net1}
N -470 -10 -470 20 {lab=MINUS}
N -390 -70 -330 -70 {lab=MINUS}
N -390 -70 -390 -10 {lab=MINUS}
N -470 -10 -390 -10 {lab=MINUS}
N -470 -30 -470 -10 {lab=MINUS}
N -800 -120 -330 -120 {lab=p1}
N -800 -120 -800 30 {lab=p1}
N -360 -90 -330 -90 {lab=PLUS}
N -360 -100 -360 -90 {lab=PLUS}
N -470 -100 -360 -100 {lab=PLUS}
N -470 -100 -470 -90 {lab=PLUS}
N -30 -140 -30 -130 {lab=#net1}
N -30 -110 -30 -100 {lab=outm}
N -30 -90 -30 -80 {lab=outp}
N -30 -70 -30 -60 {lab=GND}
C {devices/gnd.sym} 20 -40 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 40 -110 0 0 {name=p1 sig_type=std_logic lab=outm}
C {lab_wire.sym} 40 -90 0 0 {name=p2 sig_type=std_logic lab=outp}
C {devices/vsource.sym} 180 -110 0 0 {name=VDD value="\{vdd\}"}
C {devices/gnd.sym} 180 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -470 -60 0 0 {name=Vdiff value="\{vdiff\}"}
C {devices/vsource.sym} -470 50 0 0 {name=Vmid value="\{vdd/2\}"}
C {devices/gnd.sym} -470 80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -800 60 0 0 {name=VDD3 value="dc 0 pulse(0, \{vdd\}, 1n, 50p, 50p, \{per/2-1n\}, \{per\})"}
C {devices/gnd.sym} -800 90 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 250 -230 0 0 {name=NGSPICE only_toplevel=true
value=" 
.param temp=27 per=20n vdd=1.2 per=1u vdiff=1m
.option method=gear reltol=1e-5

.control
save all
tran 10p 4n
alterparam vdiff=100m
reset
tran 10p 4n
plot p1 tran1.outm tran1.outp 
plot p1 tran2.outm tran2.outp 
.endc
"}
C {lab_wire.sym} -690 -120 0 0 {name=p3 sig_type=std_logic lab=p1}
C {lab_wire.sym} -420 -100 0 0 {name=p4 sig_type=std_logic lab=PLUS}
C {lab_wire.sym} -360 -70 0 0 {name=p5 sig_type=std_logic lab=MINUS}
C {devices/code_shown.sym} -790 200 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {Comparator.sym} -180 -100 0 0 {name=x1}
