global.player_start_position = other.start_;
persistent = true;
//room_goto(other.room_);

var transition=instance_create_layer(x,y,"Instances",o_fade_transition);
transition.nextroom=other.room_;
