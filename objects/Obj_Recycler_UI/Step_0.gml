
switch(keyboard_key){
	case Obj_Control_Definitions.control_up:
		selected_index -= 1; 
		if (selected_index < 0){
			selected_index = slots_filled - 1;
		}
		io_clear(); break;
	case Obj_Control_Definitions.control_down:
		selected_index += 1; 
		if (selected_index >= slots_filled){
			selected_index = 0;
		}
		io_clear(); break;
	case Obj_Control_Definitions.interact:
		if (inventory[selected_index][0] != item.nothing){
			recycle(inventory[selected_index][0]);
			var removal_index = -1;
			for (var i = 0; i < Obj_Player.slots_filled; ++i){
				if (Obj_Player.inventory[i][0] == inventory[selected_index][0]){
					removal_index = i;
					break;
				}
				if (removal_index != -1){break;}
			}
			inventory_Remove(Obj_Player,removal_index);
			inventory_Remove(Obj_Recycler_UI,selected_index);
			if (inventory[selected_index][0] == item.nothing){
				selected_index = 0;
			}
		}
		io_clear();
		break;
	case Obj_Control_Definitions.escape:
		Obj_Player.control = true;
		io_clear();
		instance_destroy(self);
	}
