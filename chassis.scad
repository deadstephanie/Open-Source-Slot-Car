artinMounts = false;
radioshackMounts = true;
scxCompactMounts = false;
scxPorsche911Diffuser = false;
wheelbaseBias = 0;


$fn = 1000;

difference() {
    union() {
        //main center plate
        translate ([0, 0, 0]) cube([2,32,2], false);
        translate([2, 3.25, 0]) cube ([22, 25.5, 2], false);
        translate([24, 0, 0]) cube ([10, 32, 2], false);
        //back wheel area
        translate([-18, 4, -1]) cube([18, 24, 3], false);
        //front wheel area
        translate([34, 4, 0]) cube([23, 24, 2], false);
        //front splitter area
        translate([57, 0, 0]) cube([9, 32, 2], false);
        //motor mount screw blocks
        //translate([-1, 7.5, 1.99]) cube([1.5, 4.5, 4.35], false);
         //translate([-17.5, 7.5, 1.99]) cube([1.5, 5, 4.35], false);
        //motor snout blocks
         translate([-13, 25.55, 1.99]) cube([9, 2, 2.6], false);
         translate([-13, 4.45, 1.99]) cube([9, 2, 2.6], false);    
        //motor mount crossover
        translate([-18, 14, 2]) cube([19, 4, 9], false);
         //rotate([90, 0, 0]) translate([-8.5,6.5, -27.55]) cylinder(d = 9, h = 2);
        //wire inlays
        translate([10, 26.75, 2]) cube ([6, 1, 2], false);
        translate([10, 24.35, 2]) cube ([6, 1, 2], false);
        translate([10, 4.25, 2]) cube ([6, 1, 2], false);
        translate([10, 6.65, 2]) cube ([6, 1, 2], false);

}    union() {
        //screw slot
        translate([48, 14.5, -0.5]) cube([12, 3, 3], false);
        //screw slot pocket
        translate([47, 14, -0.5]) cube([14, 4, 1], false);
        //guide flag hole
        translate([40, 16, -0.5]) cylinder(d = 3.5, h = 3);
        //braid hole R
        translate([43, 21, -0.5]) cube([3.1, 3.1, 3], false);
        //braid hole L
        translate([43, 8, -0.5]) cube([3.1, 3.1, 3], false);
        //motor cutout
        translate([-16, 6.45, -1.1]) cube ([15, 19.1, 4.01], false);
        //motor mount screw slot
        translate([-20, 8.5, 4]) cube ([30, 2.5, 1.55], false);
        //motor snout cutout
        translate([-8.5, 29, 3.5]) rotate([90, 0, 0]) cylinder(d = 5, h = 30);
    //motor mount crossover cutout
    translate([-16, 13, 2]) cube([15, 6, 7], false);
    translate([-18.5, 13, 2]) cube ([3, 6, 0.2], false);
        //sxc front screw pocket
        if (scxCompactMounts == true) translate([51.7, 16, -0.01]) cylinder(d = 4.75, h = 5.5);
    }
}

//axle mounts
difference() {
    union() {
        //back
        //translate([-11, 4, 2]) cube([4, 2, 3.5], false);
         //translate([-11, 26, 2]) cube([4, 2, 3.5], false);
        //front
          translate([41 + wheelbaseBias, 4, 2]) cube([10, 2, 4], false);
          translate([41 + wheelbaseBias, 26, 2]) cube([10, 2, 4], false);
    }
    union() {
          translate([46 + wheelbaseBias, 30, 4]) rotate([90, 0, 0]) cylinder(d = 2.2, h = 30);
         translate([49 + wheelbaseBias, 30, 4]) rotate([90, 0, 0]) cylinder(d = 2.2, h = 30);
         translate([43 + wheelbaseBias, 30, 4]) rotate([90, 0, 0]) cylinder(d = 2.2, h = 30);
    }
}

if (artinMounts == true) {
    translate([2, 3.25, 0]) cube([22, 2, 4.3], false);
    translate([2, 1.25, 2.5]) cube([22, 2, 1.8], false);
    translate([2, 26.75, 0]) cube([22, 2, 4.3], false);
    translate([2, 28.75, 2.5]) cube([22, 2, 1.8], false);
}

if (radioshackMounts == true) {
    translate([2, 3.25, 2]) cube([22, 2, 4.3], false);
    translate([2, -0.25, 4.5]) cube([22, 3.5, 1.8], false);
    translate([2, 26.75, 2]) cube([22, 2, 4.3], false);
    translate([2, 28.75, 4.5]) cube([22, 3.5, 1.8], false);
}

if (scxCompactMounts == true) {
    difference() {
        union() {
    translate([-31, 12, 0]) cube([13.5, 8, 2], false);
    translate([-28, 16, 0]) cylinder(d = 6, h = 11.5);
        }
        union() {
    translate([-28, 16, -0.01]) cylinder(d = 3, h = 15);
    translate([-28, 16, -0.01]) cylinder(d = 4.75, h = 8.5);
        }
    }
    difference() {
        union() {
    translate([51.7, 16, 0]) cylinder(d = 6, h = 7);
        }
        union() {
    translate([51.7, 16, -0.01]) cylinder(d = 3, h = 15);
    translate([51.7, 16, -0.01]) cylinder(d = 4.75, h = 5.5);
        }
    }
}

if (scxPorsche911Diffuser == true) {
    difference() {
        union() {
    translate([-31, 3.5, 0]) cube([5, 25, 6], false);
    rotate([0, 0, 20])translate([-16, 35, 0]) cube([9, 2, 6], false);
    rotate([0, 0, -20])translate([-27, -7, 0]) cube([9, 2, 6], false);
        }
        union() {
    translate([-28, 16, -0.01]) cylinder(d = 4.75, h = 8);
    translate([-41, 20, 1]) rotate([0, 50, 0]) cube([10, 7, 10]);
    translate([-41, 5, 1]) rotate([0, 50, 0]) cube([10, 7, 10]);
        }
    }
}