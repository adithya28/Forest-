///@arg item_sprite;
var item_sprite=argument0;
if(!instance_exists(o_player))
exit;
o_player.state_=player.found_item;
o_player.found_item_sprite=item_sprite;
o_player.invincible_=true;
o_player.alarm[2]=global.one_second;
audio_play_sound(a_item,6,false);
