var pa=argument0
var target_object=pa[0];
var xx=pa[1];
var yy=pa[2];
var image_state;
with(target_object)
{	
direction=point_direction(x,y,xx,yy);
image_angle=round(direction/90)*90;
image_state=round(direction/90);
}
instance_deactivate_object(o_title_ui);
cutscene_end_action();
