all: compile simulate

compile:
	iverilog -o sim Wire.v TB1.v

simulate: compile
	vvp sim

waves: simulate
	gtkwave dump.vcd

clean:
	rm -f sim dump.vcd