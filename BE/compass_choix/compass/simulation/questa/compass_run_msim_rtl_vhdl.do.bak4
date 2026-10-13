transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/audib/Desktop/Audy/compass/compass_choix.vhd}

vcom -93 -work work {C:/Users/audib/Desktop/Audy/compass/tb_compass_choix.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_compass_choix

add wave *
view structure
view signals
run 3 sec
