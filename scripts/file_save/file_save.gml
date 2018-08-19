///@arg filename
///@arg string


var string_=argument1;
var buffer=buffer_create(string_length(string_)+1,buffer_fixed,1);
buffer_write(buffer,buffer_string,argument0);
buffer_save(buffer,argument0);
buffer_delete(buffer);
