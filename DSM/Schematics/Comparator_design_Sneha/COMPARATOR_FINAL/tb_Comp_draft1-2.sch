v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 400 -50 400 -40 {p1
lab=VDD}
N 320 -50 320 -40 {p1
lab=VSS}
N 560 -190 580 -190 {lab=VDD}
N 580 -210 580 -190 {lab=VDD}
N 560 -130 580 -130 {lab=VSS}
N 580 -130 580 -110 {lab=VSS}
N -120 -190 -120 -80 {lab=p1}
N -120 -190 260 -190 {lab=p1}
N 190 -80 230 -80 {lab=MINUS}
N 100 40 100 70 {lab=MINUS}
N 100 -110 220 -110 {lab=PLUS}
N 190 -80 190 40 {lab=MINUS}
N 100 40 190 40 {lab=MINUS}
N 100 20 100 40 {lab=MINUS}
N -340 -80 -120 -80 {lab=p1}
N 230 -170 230 -80 {lab=MINUS}
N 230 -170 260 -170 {lab=MINUS}
N 220 -150 220 -110 {lab=PLUS}
N 220 -150 260 -150 {lab=PLUS}
N 100 -110 100 -40 {lab=PLUS}
C {devices/gnd.sym} 400 20 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 400 -10 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} 400 -50 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} 320 20 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 320 -10 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 320 -50 0 0 {name=l11 lab=VSS}
C {devices/vdd.sym} 580 -210 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 580 -110 2 0 {name=l6 lab=VSS}
C {lab_wire.sym} 560 -170 0 1 {name=p1 sig_type=std_logic lab=S}
C {lab_wire.sym} 560 -150 0 1 {name=p3 sig_type=std_logic lab=R}
C {devices/vsource.sym} -340 -50 0 0 {name=VDD3 value="dc 0 pulse(0, \{vdd\}, 0, 100n, 100n, 2u, 4.5u)"
savecurrent=false}
C {devices/gnd.sym} -340 -20 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 160 -110 0 0 {name=p4 sig_type=std_logic lab=PLUS}
C {lab_wire.sym} 220 -80 0 0 {name=p5 sig_type=std_logic lab=MINUS}
C {devices/vsource.sym} 100 -10 0 0 {name=Vdiff value="\{vdiff\}"}
C {devices/vsource.sym} 100 100 0 0 {name=Vmid value="\{vdd/2\}"}
C {devices/gnd.sym} 100 130 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 120 -190 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/code_shown.sym} 680 -580 0 0 {name=NGSPICE only_toplevel=true
value=" 
.param temp=27 per=10n vdd=1.5 vdiff=1m
.option method=gear reltol=1e-5

.control
save all
tran 10n 60u
alterparam vdiff=100m
reset
tran 10n 60u
plot p1 tran1.S tran1.R 
plot p1 tran2.S tran2.R 
.endc
"}
C {devices/code_shown.sym} 680 -140 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {Comp_draft1.sym} 410 -160 0 0 {name=x1}
