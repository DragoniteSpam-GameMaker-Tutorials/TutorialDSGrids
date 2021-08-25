if (show_question("Load grid?")){
    var f=file_text_open_read(working_directory+"\\dsgrid.g");
    ds_grid_read(grid, file_text_read_string(f))
    file_text_close(f);
}

