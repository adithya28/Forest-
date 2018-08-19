//@arg filename 
var filename=argument0;
if(file_exists(filename))
{
	file_delete(filename);
}

var player1=instance_find(o_player,0);
ini_open(filename);
ini_write_string("Level","Room",room_get_name(room));
ini_write_real("StartPos","Xpos",player1.x);
ini_write_real("StartPos","Ypos",player1.y);
ini_write_real("PlayerStats","CurrentHealth",global.player_health);
ini_write_real("PlayerStats","CurrentStamina",global.player_stamina);
ini_write_inventory("Inventory","Active",global.item);
ini_write_inventory("Inventory","CurrentInventory",global.inventory);
write_string_array("World","Destroyed_objects",global.destroyed);

ini_close();
show_debug_message("saved");