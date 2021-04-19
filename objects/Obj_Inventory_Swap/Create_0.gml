
accessed_instance = global.CALLING_INSTANCE;		// Get ID of opened instance
global.CALLING_INSTANCE = 0;						// Restore global to default

selected_index = 0;

// Which inventory has selector 1 = player 2 = other -1 = both empty
if (Obj_Player.slots_filled > 0){
	column = 1;}
else if (accessed_instance.slots_filled > 0){
	column = 2;}
else{
	column = -1;}

display_height = 35;

// false unless npc shop
commerce = false;

// for when player doesn't have money for something
insufficient_funds = false;