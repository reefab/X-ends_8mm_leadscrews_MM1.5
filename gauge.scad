rod_dia = 8;
motor_shaft_dia = 5;
clearance = 0.1;

zrod_leadscrew_dist = 30;

height = 3;

difference() {
    translate([0,0,height/2]) cube([zrod_leadscrew_dist, rod_dia, height], center=true);

    translate([zrod_leadscrew_dist/2,0,0]) cylinder(d=rod_dia + clearance, h=height, $fn=50);
    translate([-zrod_leadscrew_dist/2,0,0]) cylinder(d=motor_shaft_dia + clearance, h=height, $fn=25);
}
