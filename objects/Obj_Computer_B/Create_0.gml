/// @description Insert description here
// You can write your code in this editor

name = "Computer";
description = "Does this save time, or consume it?";
hasInventory = false; 
hasOptions = false;

function access(){
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}