include <configuration/general.scad>;
use <back_plate.scad>;
include <utils/hex_trap.scad>;
use <utils/pillar.scad>;
use <hdmi_cover.scad>
use <top_plate.scad>
use <outer_corner.scad>
rotate([90,0,0]){
hdmi_plate();
base_back();
base_pillars();
top_plate_assembly();
corners_assembly();
}

