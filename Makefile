oscad = /Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD
source =jonaskuehling_x-ends_trapezoidalspindle.scad

all:x-motor.stl x-idler.stl gauge.stl top_nut.stl

x-motor.stl: $(source)
	$(oscad) -o $@ -D idler=false $(source)

x-idler.stl: $(source)
	$(oscad) -o $@ -D idler=true $(source)

gauge.stl: $(source)
	$(oscad) -o $@ $(source)

top_nut.stl: $(source)
	$(oscad) -o $@ $(source)


