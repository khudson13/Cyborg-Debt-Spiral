/// @description Insert description here
// You can write your code in this editor

// TEMPLATE CODE FOR FURNITURE OBJECTS
name = "";
description = "";
passable = false;
hasInventory = false; 
hasOptions = false;
/* Does furniture contain inventory?
Does furniture have additional functionality?
Inventory (inventory[]) handled within furniture manager, and
is a simple array of enums, as found in items_enum.
Additional functions handled by an array of command strings
utilized by a switch function titled 'options()' located
in the specific furniture object.*/
function access(){
	// This function mostly exists to accomplish quick, 
	// single button tasks (such as opening doors) without 
	// getting the manager involved and showing the player
	// any menus.
	
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}