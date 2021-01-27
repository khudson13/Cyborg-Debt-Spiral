

function inventory_create(size){
	var inventory;
	for (var i = 0; i < size + 1; ++i;){
		inventory[i] = item.nothing;
		inventory[i][1] = 0;}
		return inventory;}

// @function inventory_Add(inventory, thing);
// @param {array} Inventory array
// @param {enum} Item being added
function inventory_Add(calling_instance, inventory, size, thing){
	
	// @description Adds an item to an inventory array
	// Returns 'false' if inventory is full
	
	//Add money
	if (thing == item.coin){
		calling_instance.money += 1;}
	
	// Add item
	else{
		for (var i = 0; i < size; ++i;){
		

			//Add new item
			if (inventory[i][0] == item.nothing){
				inventory[i][0] = thing;
				inventory[i][1] = 1;
				calling_instance.slots_filled += 1;
				return inventory;}
			
			// Add to quantity
			else if (inventory[i][0] == thing){
				inventory[i][1] = (inventory[i][1] + 1); // += fails for some reason
				return inventory;}
	}}
		
	return inventory;
}

function inventory_Drop(droppingInstance,inventoryIndex,dropX,dropY){
	// Create new instance of dropped item at drop position
	global.CREATE_ID = droppingInstance.inventory[inventoryIndex][0];
	instance_create_layer(dropX,dropY,"Instances",Obj_Item);
	
	// Remove dropped item from inventory
	
	droppingInstance.inventory[inventoryIndex][1] = (droppingInstance.inventory[inventoryIndex][1] - 1);
	if (droppingInstance.inventory[inventoryIndex][1] == 0){
		for (var i = inventoryIndex; i < droppingInstance.slots_filled; ++i;){
			droppingInstance.inventory[i][0] = droppingInstance.inventory[i + 1][0];
			droppingInstance.inventory[i][1] = droppingInstance.inventory[i + 1][1];}
		
		droppingInstance.slots_filled -= 1;
	}
}

function inventory_Remove(droppingInstance,inventoryIndex){
	droppingInstance.inventory[inventoryIndex][1] = (droppingInstance.inventory[inventoryIndex][1] - 1);
	if (droppingInstance.inventory[inventoryIndex][1] == 0){
		for (var i = inventoryIndex; i < droppingInstance.slots_filled; ++i;){
			droppingInstance.inventory[i][0] = droppingInstance.inventory[i + 1][0];
			droppingInstance.inventory[i][1] = droppingInstance.inventory[i + 1][1];}
		
		droppingInstance.slots_filled -= 1;
	}
	
//	if (Obj_Inventory_Swap.selected_index > 0){
//		Obj_Inventory_Swap.selected_index -= 1;}
}

// check to see if an item is in an inventory
function has_item(item,inventory_list,inventory_length){
	for (var i = 0; i < inventory_length; ++i;){
		if (inventory_list[i][0] == item){return true;}
	}
	return false;
}