$fn = 500;
difference() {
    union() {
        cylinder(d = 11, h = 6);
        translate([0, 0, 1]) cylinder(d = 13, h = 4);
        cylinder(d = 15, h = 6);
    }
    union() {
        translate([0, 0, 3]) cylinder(d = 2 h = 10);
        translate([0, 0, -0.5]) cylinder(d = 2, h = 2);
    }
}