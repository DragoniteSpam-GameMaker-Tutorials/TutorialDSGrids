draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, make_colour_hsv(clamp(ds_grid_get(grid, i, j) / 4, 0, 160), 60, 255), 1);
draw_set_color(c_black);
draw_text(x+16, y+16, string(ds_grid_get(grid, i, j)));

