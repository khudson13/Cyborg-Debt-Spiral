/// @description Initialize Variables


// True when currently controlling character and not inventory or something
control = true;
// Initialize Inventory
inventory = [];
for (var i = 0; i < INVENTORY_SIZE; ++i;)
{inventory[i] = item.nothing;}

// Number of inventory slots filled
slots_filled = 0;

// INVENTORY VARIABLES
total_weight = 0;

// Figure out how to offload this code to a script file 
function inventory_Add(inventory, thing){
	for (var i = 0; i < INVENTORY_SIZE; ++i;){
		
		if (inventory[i] == item.nothing){
			inventory[i] = thing;
			slots_filled += 1;
			return inventory;}
	}	
		
	return false;
}