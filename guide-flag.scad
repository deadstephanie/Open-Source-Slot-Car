$fn = 1000;
difference() {
    union() {
translate([0, 0, ]) cylinder(d = 2.5, h = 4);
translate([0, 0, 4]) cylinder(h = 2, d1 = 3, d2 = 1.8, false);
    }
    union() {
        translate([-0.5, -4, 2.5]) cube([1, 6, 3], false);
    }
}
difference() {
    union() {
        translate([-6.5, -7.25, -1]) cube([13, 14.5, 1], false);
        translate([-6.5, -0.75, -6.5]) cube([20, 1.5, 5.5], false);
    }
    union() {
        translate([-4.5, -9, -1.5]) cube([1, 7, 2], false);
        translate([3.5, -9, -1.5]) cube([1, 7, 2], false);
        translate([-4.5, 2, -1.5]) cube([1, 7, 2], false);
        translate([3.5, 2, -1.5]) cube([1, 7, 2], false);    
    }
}