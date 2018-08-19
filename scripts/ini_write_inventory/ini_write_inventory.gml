///@arg section
///@arg name
///@arg inventory[]
var section=argument0;
var name=argument1;
var inventory=argument2;
var inventory_length=array_length_1d(inventory);


for(var i=0;i<inventory_length;i++)
{
	var value=inventory[i];
	if(instance_exists(value))
	{
		ini_write_string(section,name+string(i),string(object_get_name(value.object_index)));
		
	}
	else
	{
		ini_write_string(section,name+string(i),string(value));
		
	}
	
}



	