/// @description Insert description here
// You can write your code in this editor
initialize_hurtbox_entity();
wall=instance_create_layer(x,y,"Instances",o_solid);


if(is_in_destroyed_list(id))
{
	instance_destroy(wall);
	instance_destroy();
	
}


