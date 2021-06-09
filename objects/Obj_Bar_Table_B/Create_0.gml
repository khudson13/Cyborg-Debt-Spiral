name = "Bar Table";
description = "This is a messy old table.";
passable = false;
hasInventory = false; 
hasOptions = false;
unique = false; // check this before trying to access unique functionality

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}