/// @description Bow State
// You can write your code in this editor
speed_=0;
var bowspeed=0.5;
image_speed=bowspeed;
if(animation_hit_frame(3))
{
	var arrow=instance_create_layer(x,y-10,"Instances",o_arrow);
	arrow.direction=direction_facing_*90;
	arrow.speed=4;
	arrow.image_angle=direction_facing_*90;	

/*switch(direction_facing_)
{
case dir.right:
		arrow.y-=4;
		break;
		case dir.up:
		arrow.y-=2;
			break;
			case dir.left:
			arrow.y-=4;
			break;
			default:break;



}*/
}
if(animation_hit_frame(image_number-1))
{
state_=player.move;
image_index=0;
}
