/// @description Insert description here
// You can write your code in this editor


name = "Bed";
description = "In time, sleep comes for us all.";
passable = false;
hasInventory = false; 
hasOptions = false;

function access(){
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}