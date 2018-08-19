/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var root_list=ds_list_create();
// for every instance, create a map

with(o_porcupine)
{
	var map=ds_map_create();
	ds_list_add(root_list,map);
	ds_list_mark_as_map(root_list,ds_list_size(root_list)-1);	
	var obj=object_get_name(object_index);
	ds_map_add(map,"name",obj);
	ds_map_add(map,"y",y);
	ds_map_add(map,"x",x);
	ds_map_add(map,"health",health_);
	
	
}
var wrapper=ds_map_create();
ds_map_add_list(wrapper,"ROOT",root_list);

var save_string=json_encode(wrapper);
file_save("savegame.sav",save_string);
var root_map=file_load("savegame.sav");
var _list=ds_map_read(root_map,"ROOT");
 
var obj_map=ds_list_read(_list,0);
 


ds_map_destroy(wrapper);


