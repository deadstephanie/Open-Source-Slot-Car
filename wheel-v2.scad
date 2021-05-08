$fn = 1000;
difference() {
    union() {
    cylinder( d = 13, h = 6);
    cylinder( d = 14, h = 1);
    translate([0, 0, 5]) cylinder( d = 14, h = 1);
    }
    union() {
        translate([0, 0, -0.1]) cylinder( d = 2, h = 5);
        translate([0, 0, 5.8]) cylinder( d = 12, h = 1);
    }
}