v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 550 -80 550 -60 {
lab=GND}
N 630 -80 630 -60 {
lab=GND}
N 630 -160 630 -140 {
lab=v_ss}
N 1500 -310 1500 -160 {
lab=v_ss}
N 1300 -410 1300 -290 {
lab=v_out}
N 930 -290 1300 -290 {
lab=v_out}
N 930 -380 930 -290 {
lab=v_out}
N 930 -380 1000 -380 {
lab=v_out}
N 730 -290 730 -160 {
lab=v_ss}
N 630 -160 730 -160 {
lab=v_ss}
N 730 -440 730 -350 {
lab=v_in}
N 730 -440 1000 -440 {
lab=v_in}
N 1120 -160 1500 -160 {
lab=v_ss}
N 930 -410 1000 -410 {lab=#net1}
N 930 -490 930 -410 {lab=#net1}
N 1300 -410 1500 -410 {lab=v_out}
N 1500 -410 1500 -370 {lab=v_out}
N 550 -550 550 -140 {lab=v_dd}
N 550 -550 1120 -550 {lab=v_dd}
N 1120 -550 1120 -460 {lab=v_dd}
N 1120 -360 1120 -160 {lab=v_ss}
N 730 -160 1120 -160 {
lab=v_ss}
C {devices/vsource.sym} 550 -110 0 0 {name=Vdd value=1.8
}
C {devices/gnd.sym} 550 -60 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 550 -160 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 630 -110 0 0 {name=Vss value=0}
C {devices/gnd.sym} 630 -60 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 630 -160 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1500 -340 0 0 {name=C1
value=17.98f}
C {lab_wire.sym} 1500 -410 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 730 -320 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 790 -440 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 930 -520 0 0 {name=I0 value= 3u}
C {spice_probe.sym} 850 -440 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1350 -410 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} -140 -70 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -140 -160 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/title.sym} 240 90 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {devices/code_shown.sym} -140 -730 0 0 {name=NGSPICE only_toplevel=true 
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
C {FoldedCascodeOTA.sym} 1150 -410 0 0 {name=x1}
