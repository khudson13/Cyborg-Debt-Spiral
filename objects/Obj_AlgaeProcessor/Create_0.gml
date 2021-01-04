/// @description Insert description here
// You can write your code in this editor

name = "Algae Processor";
description = "Part of the algae processing system.";
passable = false;
hasInventory = false; 
hasOptions = false;

function access(){
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}