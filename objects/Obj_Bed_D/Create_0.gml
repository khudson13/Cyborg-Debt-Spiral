name = "Bed";
description = "In time, sleep comes for\nus all.";
passable = false;
hasInventory = false; 
hasOptions = false;

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}