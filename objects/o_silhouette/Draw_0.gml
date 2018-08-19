/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0);
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);


var cam=view_camera[0];
var mask_width=camera_get_view_x(cam);
var mask_height=camera_get_view_y(cam);
draw_rectangle(mask_width,mask_height,mask_width+camera_get_view_width(cam),mask_height+camera_get_view_height(cam),false);
draw_set_alpha(1);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);