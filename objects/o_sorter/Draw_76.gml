/// @desc PRE-DRAW EVENT

// Clear Sort List
ds_list_clear(depthList);
// Define Camera View Coordinates
// ***Note: Change view_camera[0] if your project uses something different
var cam_x1 = camera_get_view_x(view_camera[0]);
var cam_y1 = camera_get_view_y(view_camera[0]);
var cam_x2 = cam_x1 + camera_get_view_width(view_camera[0]);
var cam_y2 = cam_y1 + camera_get_view_height(view_camera[0]);

// Define Local Variables
var loop = 0;
var xx = 0;
var yy = 0;
var width = 0;
var height = 0;
var tiles=noone;
var ix;
var iy;
// Get All Elements On Invisible Layer And Loop
var elements = layer_get_all_elements(sortingLayer);
repeat (array_length_1d(elements)) {
   xx = undefined;
   // Object Instances
 /*  if (layer_get_element_type(elements[loop]) == layerelementtype_instance) {
       var thisInst = layer_instance_get_instance(elements[loop]);
       xx = thisInst.x;
       yy = thisInst.y;
       width = thisInst.sprite_width;
       height = thisInst.sprite_height;
   }*/
  
   
   // Asset Layer Sprites
   if (layer_get_element_type(elements[loop]) ==  layerelementtype_tilemap) {
	    
		tiles=layer_tilemap_get_id(sortingLayer)
		tileset=tilemap_get_tileset(tiles);
		if(tileset==t_town_set)
		show_debug_message(tileset);
		xx =tilemap_get_x(tiles);
		yy =tilemap_get_y(tiles);
		ix=tilemap_get_cell_x_at_pixel(tiles,xx,yy);
        iy=tilemap_get_cell_y_at_pixel(tiles,xx,yy);
	    draw_tile(tileset,tilemap_get(tiles,ix,iy),0,xx,yy);
       
   }
   // If Within Screen View Add To Sorting List
   if (xx != undefined && xx + width >= cam_x1 && xx - width <= cam_x2 && yy + height >= cam_y1 && yy - height <= cam_y2) {
       ds_list_add(depthList, (elements[loop] | yy << 32) );
   }
   
   loop++;
}

// Sort List According to Y value
ds_list_sort(depthList, true);