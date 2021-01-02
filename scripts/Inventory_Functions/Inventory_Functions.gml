// @function inventory_Add(inventory, thing);
// @param {array} Inventory array
// @param {enum} Item being added

function inventory_Add(calling_instance, inventory, thing) {
	
	// @description Adds an item to an inventory array
	// Returns 'false' if inventory is full
	
	for (var i = 0; i < INVENTORY_SIZE; ++i;) {		
		
		if (inventory[i] == item.nothing) {
			inventory[i] = thing;
			calling_instance.slots_filled += 1;
			return inventory;
		}
	}	
		
	return inventory;
}
