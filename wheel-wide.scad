$fn = 1000;
difference() {
    union() {
    cylinder( d = 13, h = 9);
    cylinder( d = 14, h = 1);
    translate([0, 0, 8]) cylinder( d = 14, h = 1);
    }
    union() {
        translate([0, 0, -0.1]) cylinder( d = 1.5, h = 8);
        translate([0, 0, 8.8]) cylinder( d = 12, h = 1);
    }
}