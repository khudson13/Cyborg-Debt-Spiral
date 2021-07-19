name = "Computer";
description = "Saver and destroyer of time.\nIt has a strange interface.";
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