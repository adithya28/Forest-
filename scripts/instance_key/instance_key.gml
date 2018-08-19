///@arg instanceid
var instanceid=argument0;
var room_=room_get_name(room);
var name=object_get_name(instanceid.object_index);
var xpos=string(instanceid.xstart);
var ypos=string(instanceid.ystart);
var key = room_+name+xpos+ypos;
return key;

