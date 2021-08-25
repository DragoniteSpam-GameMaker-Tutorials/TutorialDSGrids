if (show_question("Save grid?")){
    var f=file_text_open_write(working_directory+"\\dsgrid.g");
    file_text_write_string(f, ds_grid_write(grid))
    file_text_close(f);
}

