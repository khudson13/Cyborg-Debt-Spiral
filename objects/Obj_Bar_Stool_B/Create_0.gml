name = "Bar Stool";
description = "It's an old bar stool,\nredolent of sweat and algae.";
passable = true;
hasInventory = false; 
hasOptions = false;
unique = false; // check this before trying to access unique functionality

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}