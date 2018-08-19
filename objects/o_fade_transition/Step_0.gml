/// @description Insert description here
// You can write your code in this editor

	//Approach image_ alpha
	image_alpha=approach(image_alpha,target_image_alpha,0.05);

if(image_alpha==target_image_alpha)
{
	target_image_alpha=0;
	room_goto(nextroom);
}

if(image_alpha==0&&target_image_alpha==0)
{
	
	instance_destroy();
}
