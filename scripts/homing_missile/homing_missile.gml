//homing_missile(id,o_enemy);
/// used to make a homing missile
///@arg target
///@arg object
var path_grid=mp_grid_create(0,0,room_width/16,room_height/16,16,16);
mp_grid_add_instances(path_grid,o_player,true);
mp_grid_add_instances(path_grid,o_solid,true);
var object=argument1;
var target=argument0;
with(object)
{
var homer_path=path_add();
if(mp_grid_path(path_grid,homer_path,x+cos(direction)*10,y+sin(direction)*10,target.x,target.y,false))
{
	path_start(homer_path,1,3,0);
}
}

