oscad = /Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD
source =jonaskuehling_x-ends_trapezoidalspindle.scad

all:x-motor.stl x-idler.stl

x-motor.stl: $(source)
	$(oscad) -o $@ -D idler=false $(source)

x-idler.stl: $(source)
	$(oscad) -o $@ -D idler=true $(source)


