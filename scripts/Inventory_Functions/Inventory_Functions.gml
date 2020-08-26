// @function inventory_Add(inventory, thing);
// @param {array} Inventory array
// @param {enum} Item being added
/*
function inventory_Add(inventory, thing){
	
	// @description Adds an item to an inventory array
	// Returns 'false' if inventory is full
	
	for (var i = 0; i < 10; ++i;){
		
		if (inventory[i] == item.nothing){
			inventory[i] = thing;
			return inventory;}
	}	
		
	return inventory;
}