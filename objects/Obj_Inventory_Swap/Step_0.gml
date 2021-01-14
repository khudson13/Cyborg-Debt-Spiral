/// @description Insert description here
// You can write your code in this editor

if (access == -1){
	switch(keyboard_key){
		case Obj_Control_Definitions.control_up:
			selected_index -= 1; 
			if (selected_index < 0){
				if (column == 1){
					selected_index = Obj_Player.slots_filled - 1;}
				if (column == 2){
					selected_index = accessed_instance.slots_filled - 1;}}
			io_clear(); break;
		case Obj_Control_Definitions.control_down:
			selected_index += 1; 
			if (column == 1 && selected_index > Obj_Player.slots_filled - 1){
				selected_index = 0;}
			if (column == 2 && selected_index > accessed_instance.slots_filled - 1){
				selected_index = 0;}
			io_clear(); break;
		case Obj_Control_Definitions.interact:
			if (column == 1){
				inventory_Add(accessed_instance,accessed_instance.inventory,accessed_instance.inventory_size,Obj_Player.inventory[selected_index])
				// WRITE AN INVENTORY REMOVE FUNCTION AND CALL IT HERE to get item out of player inventory
				}
			if (column == 2){
				inventory_Add(Obj_Player,Obj_Player.inventory,Obj_Player.inventory_size,accessed_instance.inventory[selected_index]);
				// WRITE AN INVENTORY REMOVE FUNCTION AND CALL IT HERE to get item out of other inventory
				}
				
			io_clear(); break;
		case Obj_Control_Definitions.escape:
			Obj_Player.control = true;
			io_clear();
			instance_destroy(self);
	}
}