v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 790 -680 790 -610 {lab=outm}
N 1080 -660 1080 -610 {lab=outp}
N 790 -400 790 -250 {lab=#net1}
N 930 -250 1080 -250 {lab=#net1}
N 1080 -400 1080 -250 {lab=#net1}
N 830 -780 880 -780 {lab=outp}
N 880 -660 880 -580 {lab=outp}
N 830 -580 880 -580 {lab=outp}
N 1000 -780 1040 -780 {lab=outm}
N 1000 -680 1000 -580 {lab=outm}
N 1000 -580 1040 -580 {lab=outm}
N 790 -750 790 -680 {lab=outm}
N 790 -680 1000 -680 {lab=outm}
N 1000 -780 1000 -680 {lab=outm}
N 1310 -820 1310 -660 {lab=outp}
N 1080 -750 1080 -660 {lab=outp}
N 880 -660 1080 -660 {lab=outp}
N 880 -780 880 -660 {lab=outp}
N 930 -250 930 -140 {lab=#net1}
N 790 -250 930 -250 {lab=#net1}
N 690 -430 750 -430 {lab=PLUS}
N 1120 -430 1140 -430 {lab=MINUS}
N 540 -850 590 -850 {lab=p1}
N 930 -80 930 -30 {lab=VSS}
N 930 -110 1020 -110 {lab=VSS}
N 1020 -110 1020 -30 {lab=VSS}
N 930 -30 1020 -30 {lab=VSS}
N 790 -430 890 -430 {lab=VSS}
N 770 -30 930 -30 {lab=VSS}
N 1080 -580 1250 -580 {lab=VSS}
N 570 -580 790 -580 {lab=VSS}
N 720 -780 790 -780 {lab=VDD}
N 1080 -780 1170 -780 {lab=VDD}
N 630 -850 700 -850 {lab=VDD}
N 400 -850 480 -850 {lab=VDD}
N 1230 -850 1310 -850 {lab=VDD}
N 1420 -870 1490 -870 {lab=VDD}
N 1380 -1040 1580 -1040 {lab=p1}
N 1080 -520 1080 -460 {lab=#net2}
N 1530 -870 1580 -870 {lab=p1}
N 1580 -1040 1580 -870 {lab=p1}
N 330 -850 360 -850 {lab=p1}
N 330 -1040 330 -850 {lab=p1}
N 790 -500 790 -460 {lab=#net3}
N 400 -1100 400 -880 {lab=VDD}
N 390 -1100 400 -1100 {lab=VDD}
N 480 -1100 480 -850 {lab=VDD}
N 400 -1100 480 -1100 {lab=VDD}
N 540 -1040 540 -850 {lab=p1}
N 330 -1040 540 -1040 {lab=p1}
N 630 -1100 630 -880 {lab=VDD}
N 480 -1100 630 -1100 {lab=VDD}
N 700 -1100 700 -850 {lab=VDD}
N 630 -1100 700 -1100 {lab=VDD}
N 720 -1100 720 -780 {lab=VDD}
N 700 -1100 720 -1100 {lab=VDD}
N 790 -1100 790 -810 {lab=VDD}
N 720 -1100 790 -1100 {lab=VDD}
N 1080 -1100 1080 -810 {lab=VDD}
N 790 -1100 1080 -1100 {lab=VDD}
N 1170 -1100 1170 -780 {lab=VDD}
N 1080 -1100 1170 -1100 {lab=VDD}
N 1230 -1100 1230 -850 {lab=VDD}
N 1170 -1100 1230 -1100 {lab=VDD}
N 1310 -1100 1310 -880 {lab=VDD}
N 1230 -1100 1310 -1100 {lab=VDD}
N 1420 -1100 1420 -870 {lab=VDD}
N 1310 -1100 1420 -1100 {lab=VDD}
N 1490 -1100 1490 -900 {lab=VDD}
N 1420 -1100 1490 -1100 {lab=VDD}
N 1350 -850 1380 -850 {lab=p1}
N 1380 -1040 1380 -850 {lab=p1}
N 540 -1040 1380 -1040 {lab=p1}
N 400 -820 400 -500 {lab=#net3}
N 400 -500 790 -500 {lab=#net3}
N 790 -550 790 -500 {lab=#net3}
N 1490 -840 1490 -520 {lab=#net2}
N 1080 -520 1490 -520 {lab=#net2}
N 1080 -550 1080 -520 {lab=#net2}
N 290 -1040 330 -1040 {lab=p1}
N 290 -110 890 -110 {lab=p1}
N 290 -1040 290 -110 {lab=p1}
N 60 -1040 290 -1040 {lab=p1}
N 990 -430 1080 -430 {lab=VSS}
N 630 -680 790 -680 {lab=outm}
N 630 -820 630 -680 {lab=outm}
N 1310 -660 1730 -660 {lab=outp}
N 1080 -660 1310 -660 {lab=outp}
N 110 -680 630 -680 {lab=outm}
C {sg13g2_pr/sg13_lv_nmos.sym} 810 -580 0 1 {name=MN3
l=0.18u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 380 -850 0 0 {name=MP5
l=0.18u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 610 -850 0 0 {name=MP3
l=0.18u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 810 -780 0 1 {name=MP1
l=0.18u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1060 -780 0 0 {name=MP2
l=0.18u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1330 -850 0 1 {name=MP4
l=0.18u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1510 -870 0 1 {name=MP6
l=0.15u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1060 -580 0 0 {name=MN4
l=0.18u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 770 -430 0 0 {name=MN1
l=0.18u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1100 -430 0 1 {name=MN2
l=0.18u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 910 -110 0 0 {name=M7
l=0.18u
w=4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 690 -430 0 0 {name=p1 lab=PLUS}
C {ipin.sym} 1140 -430 0 1 {name=p2 lab=MINUS}
C {ipin.sym} 390 -1100 0 0 {name=p5 lab=VDD}
C {ipin.sym} 770 -30 0 0 {name=p7 lab=VSS}
C {devices/title.sym} 270 90 0 0 {name=l5 author="Sneha Shree"}
C {ipin.sym} 60 -1040 0 0 {name=p12 lab=p1}
C {devices/lab_wire.sym} 990 -430 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 890 -430 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1250 -580 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 570 -580 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {opin.sym} 1730 -660 0 0 {name=p3 lab=outp}
C {opin.sym} 110 -680 0 1 {name=p4 lab=outm}
