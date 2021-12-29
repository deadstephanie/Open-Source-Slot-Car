artinMounts = false;
radioshackMounts = false;
scxCompactMounts = false;
unknownWRX = true;
scxPorsche911Diffuser = false;
wheelbaseBias = -1; //use to nudge the front axle mounts forward and back, set to -1 for unknownWRX, ymmv for anything else
frontRideHeightBias = 0.5; //use to nudge front axle mounts up and down, set to 0.5 for unknownWRX, 0 for anything else
frontGuideClearance = 2.5; //nudges front guide flag mount up for clearance and to fix positive rake, use 2.5 for all applications
motorBoxBias= -1; //used to account for the shaft length not being equal on both sides of the motor, adust if using a different motor. use -1 for either of the spec motors
rearRideHeightBias = 2; //use to nudge motor box up and down, set to 2 for unknownWRX, 0 for anything else
rearBoxClearance = 1; //use to nudge the motor mount box bottom up and down, 1 is flush, 0 is dropped down 1mm, set as 1 for unknownWRX, 0 for anything else


$fn = 1000;

difference() {
    union() {
        //main center plate
        translate ([0, 0, 0]) cube([2,32,2], false);
        translate([2, 3.25, 0]) cube ([22, 25.5, 2], false);
        translate([24, 0, 0]) cube ([10, 32, 2], false);
        //motor box plate
        translate([-18, 4 + motorBoxBias, -1 + rearBoxClearance]) cube([18, 24, 3 + rearRideHeightBias], false);
        //front wheel area
        translate([34, 4, 0]) cube([23, 24, 2], false);
        //front guide flag mount
        translate([9, 4, 0]) cube([38, 24, 2 + frontGuideClearance], false);
        //front guide flag mount spacer
        translate([38, 16, 2 + frontGuideClearance]) cylinder(d = 5, h = 4.1);
        //front splitter area
        translate([57, 0, 0]) cube([7, 32, 2], false);
        //motor snout blocks
         translate([-13, 25.55 + motorBoxBias, 1.99]) cube([9, 2, 2.6 + rearRideHeightBias], false);
         translate([-13, 4.45 + motorBoxBias, 1.99]) cube([9, 2, 2.6 + rearRideHeightBias], false);    
        //wire inlays
        translate([10, 26.75, 2 + frontGuideClearance]) cube ([6, 1, 2], false);
        translate([10, 24.35, 2 + frontGuideClearance]) cube ([6, 1, 2], false);
        translate([10, 4.25, 2 + frontGuideClearance]) cube ([6, 1, 2], false);
        translate([10, 6.65, 2 + frontGuideClearance]) cube ([6, 1, 2], false);

}    union() {
        //screw slot
        translate([48, 14.5, -0.5]) cube([12, 3, 3], false);
        //screw slot pocket
        translate([47, 14, -0.5]) cube([14, 4, 1], false);
        //guide flag hole
        translate([38, 16, -0.5]) cylinder(d = 3.5, h = 10);
        //braid hole R
        translate([41, 19, -0.5]) cube([3.1, 3.1, 7], false);
        translate([32, 19, -0.5]) cube([3.1, 3.1, 7], false);
        //braid hole L
        translate([41, 10, -0.5]) cube([3.1, 3.1, 7], false);
        translate([32, 10, -0.5]) cube([3.1, 3.1, 7], false);
        //front guide flag cutout
        translate([21, 7, -0.01]) cube([25, 19, 0 + frontGuideClearance], false);
        //motor cutout
        translate([-16, 6.45 + motorBoxBias, -1.1]) cube ([15, 19.1, 10.01 + rearRideHeightBias], false);
        //cutout for angled motor (unknownwrx specific)
        if (unknownWRX == true) translate([-1.99, 7.45, 2]) cube ([2.02, 5, 5], false);
        //motor snout cutout
        translate([-8.5, 29  + motorBoxBias, 3.0 + rearRideHeightBias]) rotate([90, 0, 0]) cylinder(d = 5, h = 30);
        //sxc front screw pocket
        if (scxCompactMounts == true) translate([51.7, 16, -0.01]) cylinder(d = 4.75, h = 5.5);
        //unknown WRX screw pocket
        if (unknownWRX == true) {
            translate([51.7, 15.5, -0.01]) cylinder(d = 3, h = 15);
            translate([51.7, 15.5, -0.01]) cylinder(d = 4.75, h = 2);}
    }
}

//axle mounts
difference() {
    union() {
        //front
          translate([47.5 + wheelbaseBias, 4, 2]) cube([3, 2, 3.5 + frontRideHeightBias], false);
          translate([47.5 + wheelbaseBias, 26, 2]) cube([3, 2, 3.5 + frontRideHeightBias], false);
    }
    union() {
         translate([49 + wheelbaseBias, 30, 4 + frontRideHeightBias]) rotate([90, 0, 0]) cylinder(d = 1.75, h = 30);
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
    translate([-28, 16, 0]) cylinder(d = 6, h = 9.5);
        }
        union() {
    translate([-28, 16, -0.01]) cylinder(d = 3, h = 15);
    translate([-28, 16, -0.01]) cylinder(d = 4.75, h = 6.5);
        }
    }
    difference() {
        union() {
    translate([51.7, 16, 0]) cylinder(d = 6, h = 5);
        }
        union() {
    translate([51.7, 16, -0.01]) cylinder(d = 3, h = 15);
    translate([51.7, 16, -0.01]) cylinder(d = 4.75, h = 3.5);
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

if (unknownWRX == true) {
    difference() {
        union() {
            //back mount plate
            translate([-29, -4, 0]) cube([12, 39, 2], false);
            translate([-26, 1.5, 0]) cube([9, 28, 7], false);
            //back screw mounts
            translate([-21.5, 22.75, 0]) cylinder(d = 6, h = 11.3);
            translate([-21.5, 8.25, 0]) cylinder(d = 6, h = 11.3);
            //side sills
            translate([0, -4, 0]) cube([39, 8, 2], false);
            translate([0, 28, 0]) cube([39, 8, 2], false);
            //front screw mount
            translate([51.7, 15.5, 0]) cylinder(d = 8, h = 5.1);
            //front splitter ext
            translate([57, -4, 0]) cube([13, 40, 2], false);
        }
        union() {
            //back screw mount cutouts
            translate([-21.5, 22.75, -0.01]) cylinder(d = 3, h = 15);
            translate([-21.5, 22.75, -0.01]) cylinder(d = 4.75, h = 9.5);
            translate([-21.5, 8.25, -0.01]) cylinder(d = 3, h = 15);
            translate([-21.5, 8.25, -0.01]) cylinder(d = 4.75, h = 9.5);
            translate([-26.1, 11.5, 2]) cube([9.2, 8, 6.1], false);
            //front screw mount cutouts
            translate([51.7, 15.5, -0.01]) cylinder(d = 3, h = 15);
            translate([51.7, 15.5, -0.01]) cylinder(d = 4.75, h = 2);
            //cutout for front axle
            translate([45, 10, 2.01]) cube([5, 10, 5], false);
        }
    }
}