/// @

name = "Trash Eater";
description = "This machine dispenses money for recyclable trash.";
passable = false;
hasInventory = false; 
hasOptions = true;
options_list = []; 
options_list[0] = "Recycle Trash";
options_number = 1;

function access(){
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
	}

function options(){
	// Generate a list of trash held by player
	garbage_list_size = 19;
	garbage_list = inventory_create(garbage_list_size);
	slots_filled = 0;
	for (var i = 0; i < Obj_Player.slots_filled; ++i){
		if (Obj_Player.inventory[i][0] > item.garbage_start && Obj_Player.inventory[i][0] < item.garbage_end){
			for (var ii = 0; ii < Obj_Player.inventory[i][1]; ++ii){
				inventory_Add(Obj_Recycler,garbage_list,garbage_list_size,Obj_Player.inventory[i][0]);
			}
		}
	}
}