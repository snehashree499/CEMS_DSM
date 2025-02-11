v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 970 -350 990 -350 {lab=VDD}
N 990 -370 990 -350 {lab=VDD}
N 970 -290 990 -290 {lab=VSS}
N 990 -290 990 -270 {lab=VSS}
N 1140 -200 1340 -200 {lab=nv}
N 1340 -200 1340 -120 {lab=nv}
N 1320 -250 1360 -250 {lab=v}
N 1280 -120 1340 -120 {lab=nv}
N 1140 -270 1160 -270 {lab=nv}
N 1320 -250 1320 -170 {lab=v}
N 1280 -250 1320 -250 {lab=v}
N 1140 -270 1140 -200 {lab=nv}
N 1120 -230 1160 -230 {lab=S}
N 1120 -100 1160 -100 {lab=R}
N 1340 -120 1360 -120 {lab=nv}
N 1140 -170 1320 -170 {lab=v}
N 1140 -170 1140 -140 {lab=v}
N 1140 -140 1160 -140 {lab=v}
N 290 -360 640 -360 {lab=p1}
N 640 -360 640 -350 {lab=p1}
N 640 -350 670 -350 {lab=p1}
N 550 -330 670 -330 {lab=MINUS}
N 550 -310 670 -310 {lab=PLUS}
N 740 -120 740 -100 {
lab=GND}
N 740 -220 740 -180 {p1
lab=VDD}
N 830 -120 830 -100 {
lab=GND}
N 830 -220 830 -180 {p1
lab=VSS}
C {devices/vdd.sym} 990 -370 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 990 -270 2 0 {name=l6 lab=VSS}
C {lab_wire.sym} 970 -330 0 1 {name=p1 sig_type=std_logic lab=S}
C {lab_wire.sym} 970 -310 0 1 {name=p3 sig_type=std_logic lab=R}
C {devices/lab_wire.sym} 1120 -230 0 0 {name=p13 sig_type=std_logic lab=S
}
C {devices/lab_wire.sym} 1120 -100 0 0 {name=p14 sig_type=std_logic lab=R
}
C {opin.sym} 1360 -250 0 0 {name=p32 lab=v}
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 1220 -250 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nor2b_1.sym} 1220 -120 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {opin.sym} 1360 -120 0 0 {name=p6 lab=nv}
C {devices/ipin.sym} 550 -310 0 0 {name=p29 lab=PLUS}
C {devices/lab_wire.sym} 610 -330 0 0 {name=p2 sig_type=std_logic lab=MINUS
}
C {devices/lab_wire.sym} 540 -360 0 0 {name=p4 sig_type=std_logic lab=p1
}
C {devices/lab_wire.sym} 600 -310 0 0 {name=p5 sig_type=std_logic lab=PLUS
}
C {devices/code_shown.sym} 320 -80 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {ipin.sym} 290 -360 0 0 {name=p7 lab=p1}
C {ipin.sym} 550 -330 0 0 {name=p8 lab=MINUS}
C {/foss/designs/CEMS_DSM/DSM/Schematics/Comparator_design_Sneha/COMPARATOR_FINAL/Comp_draft1.sym} 820 -320 0 0 {name=x1}
C {devices/gnd.sym} 740 -100 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 740 -150 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} 740 -220 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 830 -100 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} 830 -150 0 0 {name=Vss1 value="dc 0"}
C {devices/vdd.sym} 830 -220 0 0 {name=l20 lab=VSS}
