function selection() {
	if (start_i!=noone){
	    draw_set_color(c_blue);
	    if (mouse_check_button(mb_left)){
	        if (mouse_y<room_height-32){
	            if (RegionCircle.selected){
	                draw_circle(start_i*32, start_j*32, mouse_distance()*32, true);
	                draw_circle(start_i*32, start_j*32, mouse_distance()*32-1, true);
	                draw_circle(start_i*32, start_j*32, mouse_distance()*32-2, true);
	            } else if (RegionRectangle.selected){
	                draw_rectangle(start_i*32, start_j*32, start_i*32+(mouse_hdistance()+1)*32, start_j*32+(mouse_vdistance()+1)*32, true);
	                draw_rectangle(start_i*32+1, start_j*32+1, start_i*32+(mouse_hdistance()+1)*32-1, start_j*32+(mouse_vdistance()+1)*32-1, true);
	            } else {
	                // if you get to this block, you broke something
	                RegionRectangle.selected=true;
	            }
	        }
	    } else {
	        if (RegionCircle.selected){
	            if (start_radius!=noone){
	                draw_circle(start_i*32, start_j*32, start_radius*32, true);
	                draw_circle(start_i*32, start_j*32, start_radius*32-1, true);
	                draw_circle(start_i*32, start_j*32, start_radius*32-2, true);
	            }
	        } else if (RegionRectangle.selected){
	            draw_rectangle(start_i*32, start_j*32, end_i*32, end_j*32, true);
	            draw_rectangle(start_i*32+1, start_j*32+1, end_i*32-1, end_j*32-1, true);
	        } else {
	            // if you get to this block, you broke something
	            RegionRectangle.selected=true;
	        }
	    }
	}



}
