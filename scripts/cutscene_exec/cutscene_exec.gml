///@description separates the scene id and arguments\
///@arg scene info 
var length=array_length_1d(argument0);
var id_=argument0[0];
show_debug_message(id_);
var counter=0;
var parameters=[];
repeat(length-1)
{
	counter++
	parameters[counter-1]=argument0[counter];
}
script_execute(id_,parameters);