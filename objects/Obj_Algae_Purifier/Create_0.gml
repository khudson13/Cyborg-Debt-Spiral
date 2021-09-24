name = "Algae Purifier";
description = "Part of the algae\nprocessing system.";
passable = false;
hasInventory = false; 
hasOptions = false;

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}