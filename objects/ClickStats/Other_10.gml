switch (get_integer("Find what? 1. Grid min. 2. Grid max. 3. Grid mean (average). 4. Grid sum.", 0)){
    case 1:
        if (RegionCircle.selected) {
            show_message(ds_grid_get_disk_min(grid, start_i - 1, start_j - 1, start_radius));
        } else if (RegionRectangle.selected) {
            show_message(ds_grid_get_min(grid, start_i, start_j, end_i - 1, end_j - 1));
        }
        break;
    case 2:
        if (RegionCircle.selected) {
            show_message(ds_grid_get_disk_max(grid, start_i - 1, start_j - 1, start_radius));
        } else if (RegionRectangle.selected) {
            show_message(ds_grid_get_max(grid, start_i, start_j, end_i - 1, end_j - 1));
        }
        break;
    case 3:
        if (RegionCircle.selected) {
            show_message(ds_grid_get_disk_mean(grid, start_i - 1, start_j - 1, start_radius));
        } else if (RegionRectangle.selected) {
            show_message(ds_grid_get_mean(grid, start_i, start_j, end_i - 1, end_j - 1));
        }
        break;
    case 4:
        if (RegionCircle.selected) {
            show_message(ds_grid_get_disk_sum(grid, start_i - 1, start_j - 1, start_radius));
        } else if (RegionRectangle.selected) {
            show_message(ds_grid_get_sum(grid, start_i, start_j, end_i - 1, end_j - 1));
        }
        break;
}

