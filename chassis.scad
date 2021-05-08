artinMounts = false;
radioshackMounts = true;
scxCompactMounts = true;
wheelbaseBias = 0;


$fn = 500;

difference() {
    union() {
        //main center plate
        translate ([0, 0, 0]) cube([2,32,2], false);
        translate([2, 3.25, 0]) cube ([22, 25.5, 2], false);
        translate([24, 0, 0]) cube ([10, 32, 2], false);
        //back wheel area
        translate([-18, 4, 0]) cube([18, 24, 2], false);
        //front wheel area
        translate([34, 4, 0]) cube([22, 24, 2], false);
        //front splitter area
        translate([56, 0, 0]) cube([10, 32, 2], false);
        //motor mount screw blocks
        translate([-1, 7.5, 1.99]) cube([2, 4.5, 4.35], false);
         translate([-18, 7.5, 1.99]) cube([2, 5, 4.35], false);
        //motor mount box
         translate([-13, 25.55, 1.99]) cube([9, 2, 2.6], false);
         //rotate([90, 0, 0]) translate([-8.5,6.5, -27.55]) cylinder(d = 9, h = 2);
         translate([-13, 4.45, 1.99]) cube([9, 2, 2.6], false);

}    union() {
        //screw slot
        translate([48, 14.5, -0.5]) cube([12, 3, 3], false);
        //screw slot pocket
        translate([47, 14, -0.5]) cube([14, 4, 1], false);
        //guide flag hole
        translate([40, 16, -0.5]) cylinder(d = 3, h = 3);
        //braid hole R
        translate([43, 21, -0.5]) cube([8.1, 4.1, 3], false);
        //braid hole L
        translate([43, 7, -0.5]) cube([8.1, 4.1, 3], false);
        //motor cutout
        translate([-16, 6.45, -1]) cube ([15, 19.1, 3.01], false);
        //motor mount screw slot
        translate([-20, 8.5, 4]) cube ([30, 2.5, 1.65], false);
        //motor box semi circle
        translate([-8.5, 28, 4.5]) rotate([90, 0, 0]) cylinder(d = 5, h = 30);
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
    translate([-27.3, 16, 0]) cylinder(d = 6, h = 9.5);
        }
        union() {
    translate([-27.3, 16, -0.01]) cylinder(d = 3, h = 15);
    translate([-27.3, 16, -0.01]) cylinder(d = 4.75, h = 5.5);
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