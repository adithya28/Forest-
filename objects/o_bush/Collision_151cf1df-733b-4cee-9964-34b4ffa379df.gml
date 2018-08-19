/// @description Insert description here
// You can write your code in this editor
if(hurtbox_entity_can_be_hit_by(other))
{
		instance_destroy(wall);
		add_to_destroyed_list(id);
	instance_destroy();

	create_animation_effect(s_bush_effect,x,y,1,true);
}
