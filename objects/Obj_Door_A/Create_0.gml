/// @description Insert description here
// You can write your code in this editor

name = "Door";
passable = false;
hasInventory = false;
hasOptions = false;

function access(){

	if (passable == false){
		instance_destroy(Obj_Furniture_Manager);
		passable = true;
		sprite_index = Spr_OpenDoor_A;
		Obj_Player.control = true;
	}
	else if (passable == true){
		instance_destroy(Obj_Furniture_Manager);
		passable = false;
		sprite_index = Spr_Door_A;
		Obj_Player.control = true;
	}
}