roomID = "D-2.2"; //Ident of unique room or category


function furnitureFill(instance){
	
}

function door(instance){
	instance.locked = true;
	instance.lockDifficulty = 100; // Can't be picked
	
	with(other){
	instance.access = function(){
	
	if (locked == true){
		Obj_Player.found_lock = true;
		if (has_item(item.ChunkKey,Obj_Player.inventory,Obj_Player.inventory_size) == true){
			locked = false;
			}
	
		if (Obj_Baxter.options_count == 2){
			Obj_Baxter.dialogue_options[2] = "D-2.3 is locked.";
			Obj_Baxter.options_count = 3;
			}
		}
		if (passable == false && locked == false){
			instance_destroy(Obj_Furniture_Manager);
			passable = true;
			sprite_index = Spr_VertDoor_A_Open;
			Obj_Player.control = true;
		}
		else if (passable == true){
			instance_destroy(Obj_Furniture_Manager);
			passable = false;
			sprite_index = Spr_VertDoor_A;
			Obj_Player.control = true;
		}
	}
	}
}