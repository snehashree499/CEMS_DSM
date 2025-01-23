v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 2480 -960 2710 -960 {lab=#net5}
N 2200 -800 2290 -800 {lab=PLUS}
N 2790 -800 2870 -800 {lab=MINUS}
N 2750 -880 2750 -830 {lab=Vout}
N 2330 -880 2330 -830 {lab=#net5}
N 2330 -880 2480 -880 {lab=#net5}
N 2330 -930 2330 -880 {lab=#net5}
N 2480 -960 2480 -880 {lab=#net5}
N 2370 -960 2480 -960 {lab=#net5}
N 1810 -1120 1810 -1070 {lab=VDD}
N 2330 -1070 2330 -990 {lab=VDD}
N 2250 -1070 2330 -1070 {lab=VDD}
N 2750 -1070 2750 -990 {lab=VDD}
N 2330 -1070 2750 -1070 {lab=VDD}
N 2750 -960 2830 -960 {lab=VDD}
N 2830 -1070 2830 -960 {lab=VDD}
N 2750 -1070 2830 -1070 {lab=VDD}
N 2250 -960 2330 -960 {lab=VDD}
N 2250 -1070 2250 -960 {lab=VDD}
N 2550 -710 2750 -710 {lab=#net6}
N 2330 -770 2330 -710 {lab=#net6}
N 2750 -770 2750 -710 {lab=#net6}
N 2550 -710 2550 -680 {lab=#net6}
N 2330 -710 2550 -710 {lab=#net6}
N 1890 -720 1940 -720 {lab=VDD}
N 1980 -1070 2250 -1070 {lab=VDD}
N 1980 -800 1980 -750 {lab=VDD}
N 1810 -1070 1980 -1070 {lab=VDD}
N 1890 -800 1890 -720 {lab=VDD}
N 1690 -720 1890 -720 {lab=VDD}
N 1890 -800 1980 -800 {lab=VDD}
N 1980 -1070 1980 -800 {lab=VDD}
N 1980 -690 1980 -570 {lab=#net7}
N 1900 -540 1940 -540 {lab=#net8}
N 1650 -630 1650 -570 {lab=#net8}
N 1650 -630 1740 -630 {lab=#net8}
N 1650 -690 1650 -630 {lab=#net8}
N 1740 -630 1740 -540 {lab=#net8}
N 1690 -540 1740 -540 {lab=#net8}
N 1650 -820 1650 -750 {lab=Ibias}
N 1630 -820 1650 -820 {lab=Ibias}
N 1560 -440 1650 -440 {lab=Vss}
N 1650 -510 1650 -440 {lab=Vss}
N 1900 -650 1900 -540 {lab=#net8}
N 1740 -540 1900 -540 {lab=#net8}
N 1900 -650 2510 -650 {lab=#net8}
N 1980 -510 1980 -440 {lab=Vss}
N 1650 -440 1980 -440 {lab=Vss}
N 2550 -620 2550 -440 {lab=Vss}
N 2100 -440 2550 -440 {lab=Vss}
N 2620 -800 2750 -800 {lab=Vss}
N 2550 -650 2620 -650 {lab=Vss}
N 2620 -650 2620 -440 {lab=Vss}
N 2550 -440 2620 -440 {lab=Vss}
N 2620 -800 2620 -650 {lab=Vss}
N 2330 -800 2620 -800 {lab=Vss}
N 1980 -720 2100 -720 {lab=Vss}
N 2100 -540 2100 -440 {lab=Vss}
N 1980 -440 2100 -440 {lab=Vss}
N 1980 -540 2100 -540 {lab=Vss}
N 2100 -720 2100 -540 {lab=Vss}
N 1560 -720 1650 -720 {lab=Vss}
N 1560 -540 1560 -440 {lab=Vss}
N 1390 -440 1560 -440 {lab=Vss}
N 1560 -540 1650 -540 {lab=Vss}
N 1560 -720 1560 -540 {lab=Vss}
N 2750 -880 2880 -880 {lab=Vout}
N 2750 -930 2750 -880 {lab=Vout}
C {devices/title.sym} 770 -290 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {sg13g2_pr/sg13_lv_pmos.sym} 2730 -960 0 0 {name=M10
l=0.4u
w=0.375u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 2350 -960 0 1 {name=M11
l=0.375u
w=0.4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2310 -800 0 0 {name=M12
l=0.6u
w=0.13u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2770 -800 0 1 {name=M13
l=0.6u
w=0.13u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 2870 -800 0 1 {name=p7 lab=MINUS
}
C {ipin.sym} 2200 -800 0 0 {name=p8 lab=PLUS}
C {ipin.sym} 1810 -1120 0 0 {name=p9 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 2530 -650 0 0 {name=M14
l=0.6u
w=0.26u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1960 -720 0 0 {name=M15
l=0.6u
w=0.13u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1960 -540 0 0 {name=M16
l=0.6u
w=0.13u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1670 -720 0 1 {name=M17
l=0.6u
w=0.13u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1670 -540 0 1 {name=M18
l=0.6u
w=0.13u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 1630 -820 0 0 {name=p10 lab=Ibias}
C {ipin.sym} 1390 -440 0 0 {name=p11 lab=Vss}
C {opin.sym} 2880 -880 0 0 {name=p12 lab=Vout}
