/// @description Insert description here
// You can write your code in this editor

if (access == -1){
	switch(keyboard_key){
		case Obj_Control_Definitions.control_up:
			selected_index -= 1; 
			io_clear(); break;
		case Obj_Control_Definitions.control_down:
			selected_index += 1; 
			io_clear(); break;
		case Obj_Control_Definitions.control_right:
			access = selected_index; break;
		case Obj_Control_Definitions.escape:
			Obj_Player.control = true;
			io_clear();
			instance_destroy(self);
	}
}
			
if (access != -1){
	switch (keyboard_key){
		case Obj_Control_Definitions.control_up:
			selected_subindex -= 1;
			if (selected_subindex < 1){selected_subindex = Obj_Items_Master.ItemsMaster[inventory[selected_index]][itemstats.menu][0];}
			io_clear(); break;
		case Obj_Control_Definitions.control_down:
			selected_subindex += 1; 
			if (selected_subindex > Obj_Items_Master.ItemsMaster[inventory[selected_index]][itemstats.menu][0]){
				selected_subindex = 1;}
			io_clear(); break;
		case Obj_Control_Definitions.control_right:
			access = selected_subindex; break;
		case Obj_Control_Definitions.escape:
			io_clear();
			access = -1
			selected_subindex = 1; break;
	}
		
			
}


// Prevent selection from going out of bounds
// Attempting to go out of bounds loops to other end
if (selected_index < 0) {selected_index = 9;}
if (selected_index > 9) {selected_index = 0;}
