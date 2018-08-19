
/// @desc DRAW EVENT

// If you need to add this to BEGIN DRAW EVENT use event_perform(ev_draw, ev_draw_begin);
// If you need to add this to END DRAW EVENT use event_perform(ev_draw, ev_draw_end);

var loop = 0;
repeat (ds_list_size(depthList)) {
   var element_id = depthList[| loop] &$ffffffff;
   if (layer_get_element_type(element_id) == layerelementtype_instance) {
       with (layer_instance_get_instance(element_id)) event_perform(ev_draw, 0);
   }
   if (layer_get_element_type(element_id) == layerelementtype_sprite) {
       draw_sprite(layer_sprite_get_sprite(element_id), -1, layer_sprite_get_x(element_id), layer_sprite_get_y(element_id));
   }
   loop++;
}