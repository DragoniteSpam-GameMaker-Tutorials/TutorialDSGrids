var val = get_integer("Value to set?", 0);
if (RegionCircle.selected){
    ds_grid_set_disk(grid, start_i - 1, start_j - 1, start_radius, val);
} else if (RegionRectangle.selected){
    ds_grid_set_region(grid, start_i, start_j, end_i - 1, end_j - 1, val);
}

