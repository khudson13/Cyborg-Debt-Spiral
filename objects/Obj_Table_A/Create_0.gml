/// @description Insert description here
// You can write your code in this editor

name = "Table";
description = "A place to eat, to work, to clutter.";
passable = false;
hasInventory = false; 
hasOptions = false;

function access(){
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}