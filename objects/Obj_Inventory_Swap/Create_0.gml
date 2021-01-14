/// @description Insert description here
// You can write your code in this editor


accessed_instance = CALLING_INSTANCE;		// Get ID of opened instance
CALLING_INSTANCE = Obj_Player;				// Restore global to default

selected_index = 0;

// Which inventory has selector 1 = player 2 = other -1 = both empty
if (Obj_Player.slots_filled > 0){
	column = 1;}
else if (accessed_instance.slots_filled > 0){
	column = 2;}
else{
	column = -1;}

display_height = 35;