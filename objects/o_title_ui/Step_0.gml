/// @description Insert description here
// You can write your code in this editor


if(o_input.up_pressed)
{
	index=max(--index,0);
	audio_play_sound(a_menu_move,10,false);
	
}
if(o_input.down_pressed)
{
	index= min(++index,option_len-1);
	if(index>=option_len)
	{
		index=0;
	}
	audio_play_sound(a_menu_move,10,false);

}
if(o_input.action_one_pressed_)
{
	audio_play_sound(a_menu_select,10,false);
	switch(index)
	{
		case options.continue_game:
			show_debug_message("Continue");
			ini_load("savedata.ini");
			break;
		case options.quit:
			show_debug_message("Quit");
			game_end();
			break;
		case options.new_game:
			show_debug_message("NEW GAME");
			room_goto(r_world);
			break;
		case options.credits:
			show_debug_message("CREDITS");
			break;
	}
	
}

		