leadscrew_nut_inner_diameter = 10.2;
leadscrew_nut_outter_diameter = 22;
leadscrew_nut_hole_from_center = 8;
leadscrew_dia = 8;
clearance = 0.2;
m3_screw_dia = 3;

difference() {
    cylinder(d=leadscrew_nut_outter_diameter, h=2);
    union() {
        for (i=[-1, 1]) translate([i* leadscrew_nut_hole_from_center,0,0]) cylinder(d=m3_screw_dia + clearance, h=2, $fn=25);
        cylinder(d=leadscrew_dia + clearance, h=2, $fn=50);
    }
}

