

function inventory_create(size){
	var inventory;
	for (var i = 0; i < size; ++i;){
		inventory[i] = item.nothing;
		inventory[i][1] = 0;}
		return inventory;}

// @function inventory_Add(inventory, thing);
// @param {array} Inventory array
// @param {enum} Item being added
function inventory_Add(calling_instance, inventory, size, thing){
	
	// @description Adds an item to an inventory array
	// Returns 'false' if inventory is full
	
	for (var i = 0; i < size; ++i;){
		
		// Add to quantity
		if (inventory[i][0] == thing){
			inventory[i][1] += 1;
			return inventory;}
		
		//Add new item
		if (inventory[i][0] == item.nothing){
			inventory[i][0] = thing;
			inventory[i][1] = 1;
			calling_instance.slots_filled += 1;
			return inventory;}
	}	
		
	return inventory;
}

function inventory_Drop(droppingInstance,inventoryIndex,dropX,dropY){
	// Create new instance of dropped item at drop position
	global.CREATE_ID = droppingInstance.inventory[inventoryIndex][0];
	instance_create_layer(dropX,dropY,"Instances",Obj_Item);
	
	// Remove dropped item from inventory
	if (droppingInstance.inventory[inventoryIndex][1] > 1){
		droppingInstance.inventory[inventoryIndex][1] -= 1;}
	else{
		for (var i = inventoryIndex; i < droppingInstance.slots_filled; ++i;){
			droppingInstance.inventory[i][0] = droppingInstance.inventory[i + 1][0];}
	}
	
	if (Obj_Inventory_window.selected_index > 0){
		Obj_Inventory_window.selected_index -= 1;}
	droppingInstance.slots_filled -= 1;
}

// check to see if an item is in an inventory
function has_item(item,inventory_list,inventory_length){
	for (var i = 0; i < inventory_length; ++i;){
		if (inventory_list[i][0] == item){return true;}
	}
	return false;
}