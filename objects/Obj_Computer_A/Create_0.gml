name = "Computer";
description = "Both a saver and destroyer of time.\nYou don't recognize the interface.";
passable = false;
hasInventory = false; 
hasOptions = false;
unique = false;

alarm[0] = 1;

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}