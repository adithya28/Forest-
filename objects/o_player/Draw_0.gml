draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha);
draw_sprite(s_medium_shadow, 0, x, y);
if(sprite_exists(found_item_sprite))
{
	draw_sprite(found_item_sprite,0,x,y-32);
}
draw_self_flash(c_white, 12, alarm[0]);

