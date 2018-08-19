///@arg section
///@arg name
///@arg default
var section=argument0;
var name=argument1;
var default_=argument2;

var array=[];

var i=0;
while (ini_key_exists(section,name+string(i)))
{
	var value=ini_read_string(section,name+string(i),"");
	array[i++]=value;
}
if(array_length_1d(array)>0)
{
	return array;
}
else
return default_;
