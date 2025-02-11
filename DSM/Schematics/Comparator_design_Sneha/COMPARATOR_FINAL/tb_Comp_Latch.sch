v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 820 -170 820 -160 {p1
lab=VDD}
N 740 -170 740 -160 {p1
lab=VSS}
N 980 -310 1000 -310 {lab=VDD}
N 1000 -330 1000 -310 {lab=VDD}
N 980 -250 1000 -250 {lab=VSS}
N 1000 -250 1000 -230 {lab=VSS}
N 300 -310 300 -200 {lab=p1}
N 300 -310 680 -310 {lab=p1}
N 610 -200 650 -200 {lab=MINUS}
N 520 -80 520 -50 {lab=MINUS}
N 520 -230 640 -230 {lab=PLUS}
N 610 -200 610 -80 {lab=MINUS}
N 520 -80 610 -80 {lab=MINUS}
N 520 -100 520 -80 {lab=MINUS}
N 80 -200 300 -200 {lab=p1}
N 650 -290 650 -200 {lab=MINUS}
N 650 -290 680 -290 {lab=MINUS}
N 640 -270 640 -230 {lab=PLUS}
N 640 -270 680 -270 {lab=PLUS}
N 520 -230 520 -160 {lab=PLUS}
N 1150 -160 1350 -160 {lab=nv}
N 1350 -160 1350 -80 {lab=nv}
N 1330 -210 1370 -210 {lab=v}
N 1290 -80 1350 -80 {lab=nv}
N 1150 -230 1170 -230 {lab=nv}
N 1330 -210 1330 -130 {lab=v}
N 1290 -210 1330 -210 {lab=v}
N 1150 -230 1150 -160 {lab=nv}
N 1130 -190 1170 -190 {lab=S}
N 1130 -60 1170 -60 {lab=R}
N 1350 -80 1370 -80 {lab=nv}
N 1150 -130 1330 -130 {lab=v}
N 1150 -130 1150 -100 {lab=v}
N 1150 -100 1170 -100 {lab=v}
C {devices/gnd.sym} 820 -100 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 820 -130 0 0 {name=Vdd value="dc \{vdd\}"}
C {devices/vdd.sym} 820 -170 0 0 {name=l9 lab=VDD}
C {devices/gnd.sym} 740 -100 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 740 -130 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 740 -170 0 0 {name=l11 lab=VSS}
C {devices/vdd.sym} 1000 -330 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 1000 -230 2 0 {name=l6 lab=VSS}
C {lab_wire.sym} 980 -290 0 1 {name=p1 sig_type=std_logic lab=S}
C {lab_wire.sym} 980 -270 0 1 {name=p3 sig_type=std_logic lab=R}
C {devices/vsource.sym} 80 -170 0 0 {name=VDD3 value="dc 0 pulse(0, \{vdd\}, 0, 100n, 100n, 2u, 4.5u)"
savecurrent=false}
C {devices/gnd.sym} 80 -140 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 580 -230 0 0 {name=p4 sig_type=std_logic lab=PLUS}
C {lab_wire.sym} 640 -200 0 0 {name=p5 sig_type=std_logic lab=MINUS}
C {devices/vsource.sym} 520 -130 0 0 {name=Vdiff value="\{vdiff\}"}
C {devices/vsource.sym} 520 -20 0 0 {name=Vmid value="\{vdd/2\}"}
C {devices/gnd.sym} 520 10 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 540 -310 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 1130 -190 0 0 {name=p13 sig_type=std_logic lab=S
}
C {devices/lab_wire.sym} 1130 -60 0 0 {name=p14 sig_type=std_logic lab=R
}
C {opin.sym} 1370 -210 0 0 {name=p32 lab=v}
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 1230 -210 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 1230 -80 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {opin.sym} 1370 -80 0 0 {name=p6 lab=nv}
C {devices/code_shown.sym} 330 -510 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.inc $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice"}
C {devices/code_shown.sym} 1340 -550 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.param temp=27 per=20n vdd=1.5 vdiff=1m 
.ic v(R)=0
.option method=gear reltol=1e-4

.control 
tran 10n 60u
alterparam vid=-100m
reset
tran 10n 60u
plot p1 tran1.S tran1.R
plot p1 tran2.v tran2.nv
.endc
"}
C {Comp_draft1.sym} 830 -280 0 0 {name=x1}
