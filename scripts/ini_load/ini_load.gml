//@arg file_name
var file_name=argument0;
if(!file_exists(file_name))
exit;
ini_open(file_name);
global.load=true;

var level_name =ini_read_string("Level","Room","");
if(level_name =="")
{
	show_error("No Save Data",false);
}
var _room=asset_get_index(level_name);
room_goto(_room);

global.start_x=ini_read_real("StartPos","XPos",0);
global.start_y=ini_read_real("StartPos","XPos",0);
global.player_health=ini_read_real("PlayerStats","CurrentHealth",0);
global.player_stamina=ini_read_real("PlayerStats","CurrentStamina",0);
global.inventory=ini_read_inventory("Inventory","CurrentInventory",[]);
global.destroyed=read_string_array("World","Destroyed_objects",[]);
global.item=ini_read_inventory("Inventory","Active",[]);
ini_close();	
