/// @description Insert description here
// You can write your code in this editor

name = "Cabinet";
description = "A home for sundries.";
passable = false;
hasInventory = true; 
hasOptions = false;
unique = false;

inventory_size = 19;
inventory = inventory_create(inventory_size);
slots_filled = 0;

alarm[0] = 1;

function access(){
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
}