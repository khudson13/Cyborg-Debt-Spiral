/* This room is technically identified as furniture, so the
player can walk up to its location and press 'e' to conclude
the game. Ultimately, I may replace this with an actual
door object, but for now this seems like a good, workable
short cut. */

name = "Sector Gate";
description = "The algae farm's main gate.";
passable = true;
hasInventory = false; 
hasOptions = true;
unique = false; // check this before trying to access unique functionality
options_list = []; 
options_list[0] = "Exit (End Game)";
options_number = 1;

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}

function options(option)
{
	switch (option)
	{
		case "Exit (End Game)":	
			instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Endgame_Spiel);
			instance_destroy(Obj_Furniture_Manager);
	}
}