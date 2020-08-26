/// @description Initialize Variables

// Initialize Inventory
inventory = [];
for (var i = 0; i <= 10; ++i;)
{inventory[i] = item.nothing;}
/*
function inventory_Add(inventory, thing){
	
	for (var i = 0; i < 10; ++i;){
		
		if (inventory[i] == item.nothing){
			inventory[i] = thing;
			return inventory;}
	}	
		
	return inventory;
}