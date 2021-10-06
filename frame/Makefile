
all: laser-harp.stl

%.stl: %.scad
	openscad -o $@ --render stl $^

.PHONY: all
