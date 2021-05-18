name = "Computer";
description = "Does this save time, or consume it?";
passable = false;
hasInventory = false; 
hasOptions = false;
unique = false;

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}