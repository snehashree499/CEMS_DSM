v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 50 -130 80 {lab=MINUS}
N -50 -10 -50 50 {lab=MINUS}
N -130 50 -50 50 {lab=MINUS}
N -130 30 -130 50 {lab=MINUS}
N -460 -60 10 -60 {lab=p1}
N -460 -60 -460 90 {lab=p1}
N -130 -40 -20 -40 {lab=PLUS}
N -130 -40 -130 -30 {lab=PLUS}
N -20 -40 -20 -20 {lab=PLUS}
N -20 -20 10 -20 {lab=PLUS}
N -10 -40 10 -40 {lab=MINUS}
N -10 -40 -10 -10 {lab=MINUS}
N -50 -10 -10 -10 {lab=MINUS}
N 310 -60 380 -60 {lab=outm}
N 310 -40 380 -40 {lab=outp}
C {devices/vsource.sym} -130 0 0 0 {name=Vdiff value="\{vdiff\}"}
C {devices/vsource.sym} -130 110 0 0 {name=Vmid value="\{vdd/2\}"}
C {devices/gnd.sym} -130 140 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -460 120 0 0 {name=VDD3 value="dc 0 pulse(0, \{vdd\}, 1n, 50p, 50p, \{per/2-1n\}, \{per\})"}
C {devices/gnd.sym} -460 150 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -350 -60 0 0 {name=p3 sig_type=std_logic lab=p1}
C {lab_wire.sym} -80 -40 0 0 {name=p4 sig_type=std_logic lab=PLUS}
C {lab_wire.sym} -20 -10 0 0 {name=p5 sig_type=std_logic lab=MINUS}
C {lab_wire.sym} 380 -60 0 0 {name=p1 sig_type=std_logic lab=outm}
C {lab_wire.sym} 380 -40 0 0 {name=p2 sig_type=std_logic lab=outp}
C {devices/code_shown.sym} 470 -280 0 0 {name=NGSPICE only_toplevel=true
value=" 
.param temp=27 per=20n vdd=1.5 per=1u vdiff=1m
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
C {devices/code_shown.sym} -830 250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {A_comp-2.sym} 160 -40 0 0 {name=x1}
