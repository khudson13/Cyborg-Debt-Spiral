/// @description Initialize Variables

// Initialize Inventory
inventory = [];
for (var i = 0; i < 10; ++i;)
{inventory[i] = item.nothing;}

// INVENTORY VARIABLES
capacity = 10;
total_weight = 0;

function inventory_Add(inventory, thing){
	
	for (var i = 0; i < 10; ++i;){
		
		if (inventory[i] == item.nothing){
			inventory[i] = thing;
			return inventory;}
	}	
		
	return false;
}