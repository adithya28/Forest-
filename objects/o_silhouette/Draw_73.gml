/// @description Insert description here
// You can write your code in this editor
gpu_set_alphatestenable(true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);

//gpu_set_fog(true,merge_color(c_white,c_red,0.5),0,1);
with(o_player)
{
draw_self();
}

gpu_set_fog(false,c_white,0,0);
gpu_set_blendenable(bm_normal);
gpu_set_alphatestenable(false);