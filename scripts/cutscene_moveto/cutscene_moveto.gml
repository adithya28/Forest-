///@description moves towards a point
///@arg object
///@arg x
///@arg y
///@arg speed
var object=argument0[0];
var xx=argument0[1];
var yy=argument0[2];
var sp=argument0[3];
with (object)
{
	if (distance_to_point(xx, yy) >5)
   {
	move_towards_point( xx, yy, sp );
   }
else
{
speed= 0;
sp=0;
}
 
}
cutscene_end_action();


