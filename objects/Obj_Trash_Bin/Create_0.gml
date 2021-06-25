name = "Trash Bin";
description = "Storage for important trash.";
passable = true;
hasInventory = true; 
hasOptions = false;
unique = false; // check this before trying to access unique functionality

alarm[0] = 1;

inventory_size = 19;
inventory = inventory_create(inventory_size);
slots_filled = 0;

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}