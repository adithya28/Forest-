/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
for(var i=0;i<option_len;i++)
{
	if(i==index)
	{
		draw_set_color(menu_color);
		
	}
	else
	{
		draw_set_color(menu_dark_color);
	}
	draw_text(x,y+i*12,option[i]);
}

draw_set_color(c_white);
draw_set_halign(fa_left);
