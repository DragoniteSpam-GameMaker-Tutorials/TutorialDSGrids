draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(textything);

globalvar grid, start_i, start_j, end_i, end_j, start_radius;
start_i=noone;
start_j=noone;
end_i=noone;
end_j=noone;
start_radius=noone;
var i, j, w, h;
w=room_width div 32;
h=room_height div 32;
h--;
grid=ds_grid_create(w, h);
for (i=0; i<w; i++){
    for (j=0; j<h; j++){
        var g=instance_create(i*32, j*32, GridSpot);
        g.i=i;
        g.j=j;
        ds_grid_add(grid, i, j, 0);
    }
}