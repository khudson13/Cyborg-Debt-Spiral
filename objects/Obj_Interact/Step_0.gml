/// @description Insert description here
// You can write your code in this editor

switch (keyboard_key)
{
	// Navigate the menu
	case Obj_Control_Definitions.control_up:
	selected_index -= 1;
	if (selected_index < 0) selected_index = totalCount - 1;
	io_clear(); break;
	case Obj_Control_Definitions.control_down:
	selected_index += 1;
	if (selected_index > totalCount - 1) selected_index = 0;
	io_clear(); break;
	
	// Execute menu choice
	case Obj_Control_Definitions.control_right:
	
	// If item pickup
	if (selected_index < (itemCount)){
		Obj_Player.inventory = inventory_Add(Obj_Player, Obj_Player.inventory, Obj_Player.inventory_size, items[| selected_index].ItemID); // Copy item to inventory
		Obj_Player.total_weight += Obj_Items_Master.ItemsMaster[items[| selected_index].ItemID][itemstats.weight]; // Increase carried weight
		instance_destroy(items[| selected_index]);  // Destroy item instance on floor
		Obj_Player.control = true;
		io_clear();
		instance_destroy(self);}
		
	// If npc talk
	if((selected_index < ((itemCount) + (npcCount))) && (selected_index > (itemCount - 1))){
		if (npc[| selected_index - itemCount].alive == true){
			instance_create_layer(Obj_Player.x,Obj_Player.y,"UI_Windows",Obj_Dialogue);
			Obj_Dialogue.talking_ID = npc[| selected_index - itemCount];
			Obj_Dialogue.talking_to = npc[| selected_index - itemCount].NPC_name;
			Obj_Dialogue.dialogue_options = npc[| selected_index - itemCount].dialogue_options;
		}
		else{
			global.CALLING_INSTANCE = npc[| selected_index - itemCount];
			instance_create_layer(x,y,"UI_Windows",Obj_Inventory_Swap);
		}
		io_clear();
		instance_destroy(self);}
	
	// If furniture interact
	if (selected_index >= ((itemCount) + (npcCount))){
		instance_create_layer(Obj_Player.x,Obj_Player.y,"UI_Windows",Obj_Furniture_Manager);
		instance_destroy(self);}
	
	io_clear(); break;
	
	// QUIT GAME
	case Obj_Control_Definitions.escape:
	Obj_Player.control = true;
	io_clear();
	instance_destroy(self);
	
}