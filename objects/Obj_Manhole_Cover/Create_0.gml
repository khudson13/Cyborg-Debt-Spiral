
name = "Manhole Cover";
description = "It's welded shut.";
passable = true;
hasInventory = false; 
hasOptions = false;
unique = false; // check this before trying to access unique functionality

alarm[0] = 1;

function access(){
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}