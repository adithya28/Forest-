///@arg LayerName
///@arg grid_x
///@arg grid_y

var lay_id=layer_get_id(argument0);

grid_x=argument1;
grid_y=argument2;
var cx=0;
var cy=0;
var map_id = layer_tilemap_get_id(lay_id);
var tile_id = tilemap_get_tileset(map_id);
var tile_id_=noone;
var tilemaps=[];
xbounds=room_width/grid_x;
ybounds=room_height/grid_y;
show_debug_message(xbounds);
if(layer_tilemap_exists(lay_id,map_id))
{
repeat(ybounds)
{
	layers[cy]=layer_create(-cy*grid_y-10);
	cx=0;
	repeat(xbounds)
	{
		tilemaps[cy]= layer_tilemap_create(layers[cy],cx*grid_x,cy*grid_y, tile_id, room_width/grid_x, room_height/grid_y);
      ix = tilemap_get_cell_x_at_pixel(map_id, cx*grid_x, cy*grid_y);
	    iy = tilemap_get_cell_y_at_pixel(map_id, cx*grid_x, cy*grid_y);
	    tile_id_= tilemap_get(map_id, ix, iy);
	  tilemap_set_at_pixel(tilemaps[cy],tile_id_,cx*grid_x,cy*grid_y);
	   cx++;        
	}
	cy++;
}
}
