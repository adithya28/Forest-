///@desc file load system
///@arg filename
var filename=
file_text_open_read(argument0);
var file_string=file_text_read_string(filename);
file_text_close(filename);
var root_map=json_decode(file_string);
return root_map;


//var details

//show_debug_message(root_map);
