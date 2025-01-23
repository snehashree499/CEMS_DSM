v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 710 -320 710 -300 {
lab=GND}
N 790 -320 790 -300 {
lab=GND}
N 790 -400 790 -380 {
lab=v_ss}
N 1660 -550 1660 -400 {
lab=v_ss}
N 1460 -650 1460 -530 {
lab=v_out}
N 1090 -530 1460 -530 {
lab=v_out}
N 1090 -620 1090 -530 {
lab=v_out}
N 1090 -620 1160 -620 {
lab=v_out}
N 890 -530 890 -400 {
lab=v_ss}
N 790 -400 890 -400 {
lab=v_ss}
N 890 -680 890 -590 {
lab=v_in}
N 890 -680 1160 -680 {
lab=v_in}
N 1280 -400 1660 -400 {
lab=v_ss}
N 1090 -650 1160 -650 {lab=#net1}
N 1090 -730 1090 -650 {lab=#net1}
N 1460 -650 1660 -650 {lab=v_out}
N 1660 -650 1660 -610 {lab=v_out}
N 710 -790 710 -380 {lab=v_dd}
N 710 -790 1280 -790 {lab=v_dd}
N 1280 -790 1280 -700 {lab=v_dd}
N 1280 -600 1280 -400 {lab=v_ss}
N 890 -400 1280 -400 {
lab=v_ss}
C {devices/vsource.sym} 710 -350 0 0 {name=Vdd value=1.8
}
C {devices/gnd.sym} 710 -300 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 710 -400 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 790 -350 0 0 {name=Vss value=0}
C {devices/gnd.sym} 790 -300 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 790 -400 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1660 -580 0 0 {name=C1
value=17.98f}
C {lab_wire.sym} 1660 -650 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 890 -560 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 950 -680 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1090 -760 0 0 {name=I0 value= 3u}
C {spice_probe.sym} 1010 -680 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1510 -650 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 190 -130 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 190 -210 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/title.sym} 240 90 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {devices/code_shown.sym} 50 -970 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write tb_FolCas_ac.raw
set appendwrite

ac dec 101 1k 1G
write tb_FolCas_ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror



plot 180/pi*ph(v_out) vs frequency

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {/foss/designs/SecondOrder_SingleBit_DSM/DSM/Designs_Hrishi/Folded Cascode/FoldedCascodeOTA.sym} 1310 -650 0 0 {name=x1}
