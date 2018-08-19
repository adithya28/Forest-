///@arg input
///@arg item
var _input = argument0;
var _item = argument1;
if(_input)
{

	var targetx=x+	lengthdir_x(8,direction_facing_*90);
	var targety=y+lengthdir_y(8,direction_facing_*90);
	show_debug_message(targetx);
	var interactible1=instance_place(targetx,targety,o_interactible);
	if(interactible1&&interactible1.activatable_)
	{
			with(interactible1)
			{
			event_user(interactible.activate);
			}
			
	}
	
  else if instance_exists(_item) and global.player_stamina >= _item.cost_ {
		state_ = _item.action_;
		global.player_stamina = max(0, global.player_stamina-_item.cost_);
		alarm[1] = global.one_second;
		image_index = 0;
	}
}