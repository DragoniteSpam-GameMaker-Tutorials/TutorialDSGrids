if (draw){
    draw_set_color(c_yellow);
    draw_rectangle(mouse_x, mouse_y, mouse_x+12+string_width(string(mouseover)), mouse_y+14, false);
    draw_set_color(c_black);
    draw_text(mouse_x+6+string_width(string(mouseover))/2, mouse_y+string_height(string(mouseover))/2, string(mouseover));
}