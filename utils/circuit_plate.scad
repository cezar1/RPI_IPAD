include <hex_trap.scad>;



module traps(base_height,base_hole_height)
{
translate([base_length/2,base_width/2,base_height])
hex_hole(base_trap_height,base_hole_height,screw_standard0,180);
translate([base_length/2,-base_width/2,base_height])
hex_hole(base_trap_height,base_hole_height,screw_standard0,180);
translate([-base_length/2,base_width/2,base_height])
hex_hole(base_trap_height,base_hole_height,screw_standard0,180);
translate([-base_length/2,-base_width/2,base_height])
hex_hole(base_trap_height,base_hole_height,screw_standard0,180);
}
module pillars(base_height)
{
    translate([base_length/2,base_width/2,0])
cylinder(r=screw_standard0*1.7,h=base_height,$fn=50);
    translate([base_length/2,-base_width/2,0])
cylinder(r=screw_standard0*1.7,h=base_height,$fn=50);
    translate([-base_length/2,base_width/2,0])
cylinder(r=screw_standard0*1.7,h=base_height,$fn=50);
    translate([-base_length/2,-base_width/2,0])
cylinder(r=screw_standard0*1.7,h=base_height,$fn=50);
}
module box()
{
    
    translate([-base_length/2-base_padding,-base_width/2-base_padding,0])
    cube(size=[base_length+base_padding*2,base_width+base_padding*2,base_trap_height],center=false);
}
module circuit_plate(screw_standard0,base_length,base_width,base_padding,pcb_thickness,base_trap_height,screw_height)
{
base_height=screw_height-pcb_thickness;    
base_hole_height=base_height-base_trap_height;

difference(){
    union(){
        box();
        pillars(base_height);}
        traps(base_height,base_hole_height);
}
}