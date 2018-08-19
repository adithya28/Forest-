///@description make cutscenes wait
///@arg seconds
var param_array=argument0;
timer++;
if(timer>param_array[0]*room_speed/3)
{
	cutscene_end_action();
}