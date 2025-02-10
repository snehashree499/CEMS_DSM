v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 1000 -550 2960 -550 2960 -10 1000 -10 1000 -550 {dash = 4}
T {Middlebrook's Method} 980 -600 0 0 0.4 0.4 {}
N 1130 -200 1680 -200 {lab=vr1}
N 1680 -340 1790 -340 {lab=vr1}
N 1480 -260 1480 -220 {lab=v_ss}
N 1480 -260 1790 -260 {lab=v_ss}
N 1680 -340 1680 -200 {lab=vr1}
N 1660 -340 1680 -340 {lab=vr1}
N 1030 -310 1360 -310 {lab=vf1}
N 1030 -310 1030 -200 {lab=vf1}
N 1030 -200 1070 -200 {lab=vf1}
N 1480 -430 1480 -390 {lab=v_dd}
N 1480 -290 1480 -260 {lab=v_ss}
N 1790 -280 1790 -260 {lab=v_ss}
N 2620 -340 2730 -340 {lab=#net1}
N 2420 -260 2420 -220 {lab=v_ss}
N 2420 -260 2730 -260 {lab=v_ss}
N 2620 -340 2620 -200 {lab=#net1}
N 2600 -340 2620 -340 {lab=#net1}
N 2140 -310 2300 -310 {lab=#net2}
N 2420 -430 2420 -390 {lab=v_dd}
N 2420 -290 2420 -260 {lab=v_ss}
N 2730 -280 2730 -260 {lab=v_ss}
N 2220 -80 2220 -50 {lab=v_ss}
N 2220 -200 2220 -140 {lab=#net3}
N 2220 -200 2240 -200 {
lab=#net3}
N 2200 -200 2220 -200 {
lab=#net3}
N 2140 -310 2140 -200 {lab=#net2}
N 2300 -200 2620 -200 {lab=#net1}
N 1230 -730 1230 -710 {
lab=GND}
N 1390 -730 1390 -710 {
lab=GND}
N 1230 -810 1230 -790 {lab=v_dd}
N 1390 -810 1390 -790 {lab=v_ss}
N 1550 -730 1550 -710 {lab=v_ss}
N 1550 -810 1550 -790 {lab=v_in}
C {devices/code_shown.sym} 100 340 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 100 -680 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write tb-loopgain.raw
set appendwrite

* AC Analysis
ac dec 101 1 100G
remzerovec
write tb-loopgain.raw
set appendwrite

* Middlebrook's Method
let tv=-v(vr1)/v(vf1)
let ti=-i(vir1)/i(vif1)
let tmb=(tv*ti - 1)/(tv + ti + 2)

plot db(tmb) ylabel 'Magnitude - Middlebrook'
plot 180/pi*cphase(tmb) ylabel 'Phase - Middlebrook'




*quit
.endc
"}
C {devices/title.sym} 240 460 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {capa.sym} 1790 -310 0 0 {name=C3
value=0.47p
}
C {isource.sym} 1730 -760 0 0 {name=I3 value=0.8u}
C {devices/vsource.sym} 1100 -200 3 0 {name=Vtest2 value="dc 0 ac 1"}
C {lab_pin.sym} 1730 -790 0 0 {name=p7 sig_type=std_logic lab=v_dd}
C {lab_pin.sym} 1730 -730 0 0 {name=p8 sig_type=std_logic lab=Ib}
C {lab_pin.sym} 1360 -340 0 0 {name=p10 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 1360 -370 0 0 {name=p12 sig_type=std_logic lab=v_in}
C {lab_wire.sym} 1050 -200 0 0 {name=p16 sig_type=std_logic lab=vf1}
C {lab_wire.sym} 1200 -200 0 0 {name=p18 sig_type=std_logic lab=vr1}
C {lab_pin.sym} 1480 -220 0 0 {name=p19 sig_type=std_logic lab=v_ss}
C {lab_pin.sym} 1480 -430 0 0 {name=p20 sig_type=std_logic lab=v_dd}
C {capa.sym} 2730 -310 0 0 {name=C4
value=0.47p
}
C {lab_pin.sym} 2300 -340 0 0 {name=p21 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 2300 -370 0 0 {name=p22 sig_type=std_logic lab=v_in}
C {lab_pin.sym} 2420 -220 0 0 {name=p25 sig_type=std_logic lab=v_ss}
C {lab_pin.sym} 2420 -430 0 0 {name=p26 sig_type=std_logic lab=v_dd}
C {isource.sym} 2220 -110 2 0 {name=Itest2 value="dc 0 ac 1"}
C {lab_pin.sym} 2220 -50 0 0 {name=p27 sig_type=std_logic lab=v_ss}
C {ammeter.sym} 2270 -200 1 0 {name=Vir2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 2170 -200 1 0 {name=Vif2 savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 1230 -760 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 1230 -710 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1230 -810 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1390 -760 0 0 {name=Vss value=0}
C {devices/gnd.sym} 1390 -710 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1390 -810 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 1550 -760 0 0 {name=Vin value="dc 0.5"}
C {lab_wire.sym} 1550 -810 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {lab_pin.sym} 1550 -710 0 0 {name=p11 sig_type=std_logic lab=v_ss}
C {FoldedCascodeOTA.sym} 1510 -340 0 0 {name=x1}
C {FoldedCascodeOTA.sym} 2450 -340 0 0 {name=x2}
