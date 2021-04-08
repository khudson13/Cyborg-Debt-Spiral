/// @description Insert description here
// You can write your code in this editor

// MAIN INVENTORY WINDOW
if (access == -1){
	switch(keyboard_key){
		case Obj_Control_Definitions.control_up:
			selected_index -= 1; 
			io_clear(); break;
		case Obj_Control_Definitions.control_down:
			selected_index += 1; 
			io_clear(); break;
		case Obj_Control_Definitions.control_right:
			io_clear();
			access = selected_index; break;
		case Obj_Control_Definitions.escape:
			Obj_Player.control = true;
			io_clear();
			instance_destroy(self);
	}
}


// INVENTORY SUB-MENU
if ((access != -1) && (subaccess == -1)){
	switch (keyboard_key){
		case Obj_Control_Definitions.control_up:
			selected_subindex -= 1;
			if (selected_subindex < 1){selected_subindex = Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][0];}
			io_clear(); break;
		case Obj_Control_Definitions.control_down:
			selected_subindex += 1; 
			if (selected_subindex > Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][0]){
				selected_subindex = 1;}
			io_clear(); break;
		case Obj_Control_Definitions.control_right:
			io_clear();
			subaccess = selected_subindex; break;
		case Obj_Control_Definitions.escape:
			io_clear();
			access = -1;
			selected_subindex = 1; break;
	}
}
	
if (subaccess != -1){
	switch (keyboard_key){
		case Obj_Control_Definitions.escape:
			io_clear();
			subaccess = -1; break;
	}
}

// ACTIVATE SUBMENU COMMAND
if (subaccess != -1){		
	// "look" code in DRAW event
		
	// if "drop"
	if (Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][subaccess] == "drop"){
		subaccess = -1;
		selected_subindex = 1;
		inventory_Drop(Obj_Player,selected_index,Obj_Player.x,Obj_Player.y);
		access = -1;
		io_clear();
	}
	else if (Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][subaccess] != "look"){
		io_clear();
		item_Script_Exec(inventory[selected_index][0], Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][subaccess]);
	}
	
}

// Prevent base inventory selection from going out of bounds
// Attempting to go out of bounds loops to other end
if (selected_index < 0) {selected_index = Obj_Player.slots_filled - 1;}
if (selected_index > Obj_Player.slots_filled - 1) {selected_index = 0;}
