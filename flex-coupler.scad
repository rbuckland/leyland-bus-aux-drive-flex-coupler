$fn = 100;


function in2mm(in) = in * 25.4;

module move(x=0,y=0,z=0,rx=0,ry=0,rz=0) { translate([x,y,z])rotate([rx,ry,rz]) children(); }



module part() {
    
    bolthole = 0.75;
    disc_dia = 5;
    centre_dia = 1.375;
    thickness = 0.5;
    offset = 0.1;
    bolt_sep_dist = 3.25;
    
    
    difference() { 
        cylinder(r=in2mm(5)/2, h=in2mm(thickness));
        move(z=-in2mm(offset/2)) cylinder(r=in2mm(centre_dia)/2, h=in2mm(thickness + offset));
        move(x=in2mm(bolt_sep_dist)/2, z=-in2mm(offset/2)) cylinder(r=in2mm(bolthole)/2, h=in2mm(thickness + offset));
        move(x=-in2mm(bolt_sep_dist)/2, z=-in2mm(offset/2)) cylinder(r=in2mm(bolthole)/2, h=in2mm(thickness + offset));
        move(y=in2mm(bolt_sep_dist)/2, z=-in2mm(offset/2)) cylinder(r=in2mm(bolthole)/2, h=in2mm(thickness + offset));
        move(y=-in2mm(bolt_sep_dist)/2, z=-in2mm(offset/2)) cylinder(r=in2mm(bolthole)/2, h=in2mm(thickness + offset));
        
    }
    
}

part();