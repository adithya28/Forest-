/// @description Insert description here
// You can write your code in this editor
enum options{
	continue_game,
	new_game,
	credits,
	quit
};
menu_color=make_color_rgb(247,243,143);
menu_dark_color=make_color_rgb(126,127,81);

option[options.continue_game]="Continue";
option[options.new_game]="New Game";
option[options.credits]="Credits";
option[options.quit]="Quit!!";
option_len=array_length_1d(option);

index=options.continue_game;
