/// @description Initialize Variables


// True when currently controlling character and not inventory or something
control = true;
// Initialize Inventory
inventory = [];
for (var i = 0; i < 10; ++i;)
{inventory[i] = item.nothing;}

// INVENTORY VARIABLES
capacity = 10;
total_weight = 0;

// Figure out how to offload this code to a script file 
function inventory_Add(inventory, thing){
	for (var i = 0; i < 10; ++i;){
		
		if (inventory[i] == item.nothing){
			inventory[i] = thing;
			return inventory;}
	}	
		
	return false;
}