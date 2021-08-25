var t=get_integer("Value to find?", 0);
if (RegionCircle.selected){
    if (ds_grid_value_disk_exists(grid, start_i - 1, start_j - 1, start_radius, t)) {
        var xpos = ds_grid_value_disk_x(grid, start_i - 1, start_j - 1, start_radius, t);
        var ypos = ds_grid_value_disk_y(grid, start_i - 1, start_j - 1, start_radius, t);
        show_message("Value found at " + string(xpos) + ", " + string(ypos));
    } else {
        show_message("Value was not found");
    }
} else if (RegionRectangle.selected){
    if (ds_grid_value_exists(grid, start_i, start_j, end_i - 1, end_j - 1, t)) {
        var xpos = ds_grid_value_x(grid, start_i, start_j, end_i - 1, end_j - 1, t);
        var ypos = ds_grid_value_y(grid, start_i, start_j, end_i - 1, end_j - 1, t);
        show_message("Value found at " + string(xpos) + ", " + string(ypos));
    } else {
        show_message("Value was not found");
    }
}