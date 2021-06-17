name = "Wall Crack";
description = "This is a large crack in the wall.\nIs there something inside?";
passable = true;
hasInventory = true; 
hasOptions = false;
unique = false; // check this before trying to access unique functionality

inventory_size = 1;
inventory = inventory_create(inventory_size);
slots_filled = 0;

alarm[0] = 1;

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}