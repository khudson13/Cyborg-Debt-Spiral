/// @description Every Step

// Check if controling character
if (control == true){

switch (keyboard_key)
{
	// DIRECTIONAL CONTROLS
	
	// Consider changing grid size to avoid this 'divide by 2' work around
	
	case Obj_Control_Definitions.control_up: y -= TILE_SIZE / 2; io_clear(); break;
	case Obj_Control_Definitions.control_left: x -= TILE_SIZE / 2; io_clear(); break;
	case Obj_Control_Definitions.control_right: x += TILE_SIZE / 2; io_clear(); break;
	case Obj_Control_Definitions.control_down: y += TILE_SIZE / 2; io_clear(); break;
	
	// QUIT GAME
	case Obj_Control_Definitions.escape: game_end();
	
	
	// INTERACTION CONTROLS

	case Obj_Control_Definitions.interact:
	
		// PICKUP FROM FLOOR
		if (place_meeting(x,y,Obj_Item))
		{
			var inst = instance_nearest(x,y,Obj_Item); // Get instance ID
			if (true){  // PLACEHOLDER FOR CARRYING CAPACITY CHECK
				inventory = inventory_Add(inventory, (inst).ItemID); // Copy item to inventory
				total_weight += Obj_Items_Master.ItemsMaster[(inst).ItemID][itemstats.weight]; // Increase carried weight
				capacity -= 1;  // Reduce remaining capacity
				instance_destroy(inst);}  // Destroy item instance on floor
		} io_clear(); break;
		
	// UI CONTROLS
	
	// open inventory
	case Obj_Control_Definitions.inventory:
		control = false;
		instance_create_layer(x,y,layer_get_id("UI_Windows"), Obj_Inventory_window); break;
	
}
}