
$fa = 1;
$fs = 0.3;

BOX_WALL_W=3;               // Box wall width.
FRAME_H = 180;              // Frame height
FRAME_W = 180;              // Frame width
FRAME_SZ = 15;              // Frame box size.

SCREW_SZ = 3;               // Drill size for attachment screws.
SCREW_L = 15;               // Drill length for attachment screws.

N_LASERS = 8;               // Number of lasers
LASER_D = 6;                // Laser LED diameter
LASER_H = 10;               // Laser LED height

LASER_SPACE = (FRAME_W - 2 * FRAME_SZ) / N_LASERS ;
module laser() {
    translate([0, 0, LASER_H/2]) {
        cylinder(h=SCREW_L, r=LASER_D/2, center=true);
        cylinder(h=SCREW_L*5, r=(LASER_D-2)/2, center=true);
    };
};

difference() {
    cube([FRAME_W, FRAME_H, FRAME_SZ]);
    translate([FRAME_SZ, 0, 0]) {
        cube([FRAME_W - FRAME_SZ*2, FRAME_H - FRAME_SZ, FRAME_SZ]);
    };
    // Left screw
     translate([FRAME_SZ/2, SCREW_L/2, FRAME_SZ/2]) {
        rotate([90,0,0]) {
            cylinder(h=SCREW_L, r=SCREW_SZ, center=true);
        };
    };

    // Right screw
    translate([FRAME_W-FRAME_SZ/2, SCREW_L/2, FRAME_SZ/2]) {
        rotate([90,0,0]) {
            cylinder(h=SCREW_L, r=SCREW_SZ, center=true);
        };
    };
    // Place fittings for lasers
    for (l=[0:N_LASERS-1]) {
        translate([FRAME_SZ + LASER_SPACE/2 + l*LASER_SPACE, FRAME_H, FRAME_SZ/2]) {
            rotate([90,0,0]) {
                laser();
            };
        };
    };
};

// Add some swag.
translate([FRAME_W/2, FRAME_H-FRAME_SZ/2, FRAME_SZ]) {
    linear_extrude(height=1) {
        // TODO - find unicode font supporting 🎵
        text(text=">>> Лазерна арфа <<<", size=FRAME_SZ-FRAME_SZ/2, halign="center", valign="center", font="Ponomar Unicode:style=Regular");
    };
};
