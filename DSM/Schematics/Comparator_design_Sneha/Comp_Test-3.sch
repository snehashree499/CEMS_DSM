v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -530 -550 -530 -480 {lab=outm}
N -240 -530 -240 -480 {lab=outp}
N -530 -270 -530 -120 {lab=#net1}
N -390 -120 -240 -120 {lab=#net1}
N -240 -270 -240 -120 {lab=#net1}
N -490 -650 -440 -650 {lab=outp}
N -440 -530 -440 -450 {lab=outp}
N -490 -450 -440 -450 {lab=outp}
N -320 -650 -280 -650 {lab=outm}
N -320 -550 -320 -450 {lab=outm}
N -320 -450 -280 -450 {lab=outm}
N -530 -620 -530 -550 {lab=outm}
N -530 -550 -320 -550 {lab=outm}
N -320 -650 -320 -550 {lab=outm}
N -10 -690 -10 -530 {lab=outp}
N -240 -620 -240 -530 {lab=outp}
N -440 -530 -240 -530 {lab=outp}
N -440 -650 -440 -530 {lab=outp}
N -390 -120 -390 -10 {lab=#net1}
N -530 -120 -390 -120 {lab=#net1}
N -630 -300 -570 -300 {lab=PLUS}
N -200 -300 -180 -300 {lab=MINUS}
N -780 -720 -730 -720 {lab=p1}
N -390 50 -390 100 {lab=GND}
N -390 20 -300 20 {lab=GND}
N -300 20 -300 100 {lab=GND}
N -390 100 -300 100 {lab=GND}
N -530 -300 -430 -300 {lab=VSS}
N -550 100 -390 100 {lab=GND}
N -240 -450 -70 -450 {lab=VSS}
N -750 -450 -530 -450 {lab=VSS}
N -600 -650 -530 -650 {lab=#net2}
N -240 -650 -150 -650 {lab=#net2}
N -690 -720 -620 -720 {lab=#net2}
N -920 -720 -840 -720 {lab=#net2}
N -90 -720 -10 -720 {lab=#net2}
N 100 -740 170 -740 {lab=#net2}
N 60 -910 260 -910 {lab=p1}
N -240 -390 -240 -330 {lab=#net3}
N 210 -740 260 -740 {lab=p1}
N 260 -910 260 -740 {lab=p1}
N -990 -720 -960 -720 {lab=p1}
N -990 -910 -990 -720 {lab=p1}
N -530 -370 -530 -330 {lab=#net4}
N -920 -970 -920 -750 {lab=#net2}
N -840 -970 -840 -720 {lab=#net2}
N -920 -970 -840 -970 {lab=#net2}
N -780 -910 -780 -720 {lab=p1}
N -990 -910 -780 -910 {lab=p1}
N -690 -970 -690 -750 {lab=#net2}
N -840 -970 -690 -970 {lab=#net2}
N -620 -970 -620 -720 {lab=#net2}
N -690 -970 -620 -970 {lab=#net2}
N -600 -970 -600 -650 {lab=#net2}
N -620 -970 -600 -970 {lab=#net2}
N -530 -970 -530 -680 {lab=#net2}
N -600 -970 -530 -970 {lab=#net2}
N -240 -970 -240 -680 {lab=#net2}
N -530 -970 -240 -970 {lab=#net2}
N -150 -970 -150 -650 {lab=#net2}
N -240 -970 -150 -970 {lab=#net2}
N -90 -970 -90 -720 {lab=#net2}
N -150 -970 -90 -970 {lab=#net2}
N -10 -970 -10 -750 {lab=#net2}
N -90 -970 -10 -970 {lab=#net2}
N 100 -970 100 -740 {lab=#net2}
N -10 -970 100 -970 {lab=#net2}
N 170 -970 170 -770 {lab=#net2}
N 100 -970 170 -970 {lab=#net2}
N 30 -720 60 -720 {lab=p1}
N 60 -910 60 -720 {lab=p1}
N -780 -910 60 -910 {lab=p1}
N -920 -690 -920 -370 {lab=#net4}
N -920 -370 -530 -370 {lab=#net4}
N -530 -420 -530 -370 {lab=#net4}
N 170 -710 170 -390 {lab=#net3}
N -240 -390 170 -390 {lab=#net3}
N -240 -420 -240 -390 {lab=#net3}
N -1030 -910 -990 -910 {lab=p1}
N -1030 20 -430 20 {lab=p1}
N -1030 -910 -1030 20 {lab=p1}
N -1260 -910 -1030 -910 {lab=p1}
N -330 -300 -240 -300 {lab=VSS}
N -690 -550 -530 -550 {lab=outm}
N -690 -690 -690 -550 {lab=outm}
N -10 -530 410 -530 {lab=outp}
N -240 -530 -10 -530 {lab=outp}
N -1210 -550 -690 -550 {lab=outm}
N -1520 -970 -1520 -920 {lab=#net2}
N -1520 -970 -920 -970 {lab=#net2}
C {sg13g2_pr/sg13_lv_nmos.sym} -510 -450 0 1 {name=MN3
l=0.18u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -940 -720 0 0 {name=MP5
l=0.18u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -710 -720 0 0 {name=MP3
l=0.18u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -510 -650 0 1 {name=MP1
l=0.18u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -260 -650 0 0 {name=MP2
l=0.18u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 10 -720 0 1 {name=MP4
l=0.18u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 190 -740 0 1 {name=MP6
l=0.15u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -260 -450 0 0 {name=MN4
l=0.18u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -550 -300 0 0 {name=MN1
l=0.18u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -220 -300 0 1 {name=MN2
l=0.18u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -410 20 0 0 {name=M7
l=0.18u
w=4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -630 -300 0 0 {name=p1 lab=PLUS}
C {ipin.sym} -180 -300 0 1 {name=p2 lab=MINUS}
C {devices/title.sym} -760 200 0 0 {name=l5 author="Sneha Shree"}
C {ipin.sym} -1260 -910 0 0 {name=p12 lab=p1}
C {devices/lab_wire.sym} -330 -300 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -430 -300 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -70 -450 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -750 -450 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {opin.sym} 410 -530 0 0 {name=p3 lab=outp}
C {opin.sym} -1210 -550 0 1 {name=p4 lab=outm}
C {devices/vsource.sym} -1520 -890 0 0 {name=VDD value="\{vdd\}"}
C {devices/gnd.sym} -1520 -860 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -550 100 0 0 {name=l2 lab=GND}
