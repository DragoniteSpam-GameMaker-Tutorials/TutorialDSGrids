if (RegionCircle.selected){
    start_radius=mouse_distance();
} else if (RegionRectangle.selected){
    end_i=i+1;
    end_j=j+1;
    if (start_i>end_i){
        var t;
        t=end_i;
        end_i=start_i;
        start_i=t;
    }
    if (start_j>end_j){
        var t;
        t=end_j;
        end_j=start_j;
        start_j=t;
    }
}

