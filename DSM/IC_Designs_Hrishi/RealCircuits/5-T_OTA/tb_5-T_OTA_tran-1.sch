v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 620 -540 620 -520 {
lab=GND}
N 700 -540 700 -520 {
lab=GND}
N 700 -620 700 -600 {
lab=v_ss}
N 1570 -770 1570 -620 {
lab=v_ss}
N 1370 -870 1370 -750 {
lab=v_out}
N 1000 -750 1370 -750 {
lab=v_out}
N 1000 -840 1000 -750 {
lab=v_out}
N 1000 -840 1070 -840 {
lab=v_out}
N 800 -750 800 -620 {
lab=v_ss}
N 700 -620 800 -620 {
lab=v_ss}
N 800 -900 800 -810 {
lab=v_in}
N 800 -900 1070 -900 {
lab=v_in}
N 1200 -620 1570 -620 {
lab=v_ss}
N 1200 -820 1200 -620 {lab=v_ss}
N 800 -620 1200 -620 {
lab=v_ss}
N 1000 -870 1070 -870 {lab=#net1}
N 1000 -950 1000 -870 {lab=#net1}
N 1370 -870 1570 -870 {lab=v_out}
N 1570 -870 1570 -830 {lab=v_out}
N 620 -1010 620 -600 {lab=v_dd}
N 620 -1010 1200 -1010 {lab=v_dd}
N 1200 -1010 1200 -920 {lab=v_dd}
C {devices/code_shown.sym} 150 -320 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 150 -400 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/title.sym} 200 -100 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {devices/code_shown.sym} 30 -930 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.ic v(v_vout)=0
.control

tran 0.005u 15u uic
plot v_out

let tstart=0
let vout_limit=0.8*0.99
meas tran tcross WHEN v(v_out)=vout_limit

let tsettle=tcross-tstart
print tsettle

.endc
"}
C {devices/vsource.sym} 620 -570 0 0 {name=Vdd value=1.8
}
C {devices/gnd.sym} 620 -520 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 620 -620 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 700 -570 0 0 {name=Vss value=0}
C {devices/gnd.sym} 700 -520 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 700 -620 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1570 -800 0 0 {name=C1
value=17.98f}
C {lab_wire.sym} 1570 -870 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 800 -780 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 860 -900 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1000 -980 0 0 {name=I0 value= 3u}
C {spice_probe.sym} 920 -900 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1420 -870 0 0 {name=p6 attrs=""}
C {/foss/designs/SecondOrder_SingleBit_DSM/DSM/IC_Designs_Hrishi/RealCircuits/5-T_OTA/5-T_OTA.sym} 1220 -870 0 0 {name=x1}
