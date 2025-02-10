v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {@name} -645 -482 0 0 0.2 0.2 {}
N -1070 -330 -1070 -300 {lab=MINUS}
N -990 -390 -990 -330 {lab=MINUS}
N -1070 -330 -990 -330 {lab=MINUS}
N -1070 -350 -1070 -330 {lab=MINUS}
N -1400 -440 -930 -440 {lab=p1}
N -1400 -440 -1400 -290 {lab=p1}
N -1070 -420 -960 -420 {lab=PLUS}
N -1070 -420 -1070 -410 {lab=PLUS}
N -960 -420 -960 -400 {lab=PLUS}
N -960 -400 -930 -400 {lab=PLUS}
N -950 -420 -930 -420 {lab=MINUS}
N -950 -420 -950 -390 {lab=MINUS}
N -990 -390 -950 -390 {lab=MINUS}
N -630 -440 -560 -440 {lab=outm}
N -630 -420 -560 -420 {lab=outp}
C {devices/vsource.sym} -1070 -380 0 0 {name=Vdiff value="\{vdiff\}"}
C {devices/vsource.sym} -1070 -270 0 0 {name=Vmid value="\{vdd/2\}"}
C {devices/gnd.sym} -1070 -240 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -1400 -260 0 0 {name=VDD3 value="dc 0 pulse(0, \{vdd\}, 1n, 50p, 50p, \{per/2-1n\}, \{per\})"}
C {devices/gnd.sym} -1400 -230 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -350 -550 0 0 {name=NGSPICE only_toplevel=true
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
C {lab_wire.sym} -1290 -440 0 0 {name=p3 sig_type=std_logic lab=p1}
C {lab_wire.sym} -1020 -420 0 0 {name=p4 sig_type=std_logic lab=PLUS}
C {lab_wire.sym} -960 -390 0 0 {name=p5 sig_type=std_logic lab=MINUS}
C {devices/code_shown.sym} -1390 -120 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {Comp_Test-3.sym} -780 -420 0 0 {name=x1}
C {lab_wire.sym} -560 -440 0 0 {name=p1 sig_type=std_logic lab=outm}
C {lab_wire.sym} -560 -420 0 0 {name=p2 sig_type=std_logic lab=outp}
