///@arg section
///@arg name
///@arg array
var section=argument0;
var name=argument1;
var array=argument2;
var size=array_length_1d(array);
for(var i=0;i<size;i++)
{
		ini_write_string(section,name+string(i),array[i]);
}
