name = "Chair";
description = "It's for sitting!";
passable = false;
hasInventory = false; 
hasOptions = false;

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}