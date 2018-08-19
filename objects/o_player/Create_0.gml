initialize_movement_entity(.5, 1, o_solid);
initialize_hurtbox_entity();
show_debug_message(global.player_health);
image_speed = 0;
acceleration_ = .5;
max_speed_ = 2;
roll_speed_ = 3.5;
direction_facing_ = dir.right;
roll_direction_ = 0;
found_item_sprite=noone;
z=0;
enum dialogs{casual}
z=-1;
dialog=ds_grid_create(2,10);
dialog[dialogs.casual,0]="Hellow!!!";
dialog[dialogs.casual,1]="Have a good day";



enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
}

enum dir {
	right,
	up,
	left,
	down
}

starting_state_ = player.move;
state_ = starting_state_;

// Sprite move lookup table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.left] = s_player_attack_right;
sprite_[player.sword, dir.down] = s_player_attack_down;

sprite_[player.evade, dir.right] = s_player_roll_right;
sprite_[player.evade, dir.up] = s_player_roll_up;
sprite_[player.evade, dir.left] = s_player_roll_right;
sprite_[player.evade, dir.down] = s_player_roll_down;

sprite_[player.hit, dir.right] = s_player_run_right;
sprite_[player.hit, dir.up] = s_player_run_up;
sprite_[player.hit, dir.left] = s_player_run_right;
sprite_[player.hit, dir.down] = s_player_run_down;

sprite_[player.bomb, dir.right] = s_player_run_right;
sprite_[player.bomb, dir.up] = s_player_run_up;
sprite_[player.bomb, dir.left] = s_player_run_right;
sprite_[player.bomb, dir.down] = s_player_run_down;

sprite_[player.found_item, dir.right] = s_intem_found;
sprite_[player.found_item, dir.up] = s_intem_found;
sprite_[player.found_item, dir.left] = s_intem_found;
sprite_[player.found_item, dir.down] = s_intem_found;

sprite_[player.bow,dir.right]=s_bow_right;
sprite_[player.bow,dir.left]=s_bow_right;
sprite_[player.bow,dir.up]=s_bow_up;
sprite_[player.bow,dir.down]=s_bow_down;




alarm[1]=global.one_second;

