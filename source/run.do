vlib work

vcom controller.vhd
vcom datapath.vhd
vcom mem.vhd
vcom register.vhd
vcom sad.vhd
vcom sad_tb.vhd

vsim -t 1ns -wlf behavior.wlf -voptargs="+acc" work.sad_tb

log -r /*
run -a
