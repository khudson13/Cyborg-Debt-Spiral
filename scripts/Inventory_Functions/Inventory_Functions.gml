// FUNCTIONS FOR CREATING, MANIPULATING, AND MANAGING CHARACTER AND
// OBJECT INVENTORIES

function inventory_create(size)
{
	var inventory;
	for (var i = 0; i < size + 1; ++i;)
	{
		inventory[i] = item.nothing;
		inventory[i][1] = 0;
		}
		return inventory;
}

// @function inventory_Add(inventory, thing);
// @param {array} Inventory array
// @param {enum} Item being added
function inventory_Add(calling_instance, inventory, inventory_size, thing)
{
	// @description Adds an item to an inventory array
	// Returns 'false' if inventory is full
	
	//Add money
	if (thing == item.coin)
	{
		calling_instance.money += 1;
	}
	
	// Add item
	else
	{
		for (var i = 0; i < inventory_size; ++i;)
		{
			//Add new item
			if (inventory[i][0] == item.nothing)
			{
				inventory[i][0] = thing;
				inventory[i][1] = 1;
				calling_instance.slots_filled += 1;
				return inventory;
			}	
			// Add to quantity
			else if (inventory[i][0] == thing)
			{
				inventory[i][1] = (inventory[i][1] + 1); // += fails for some reason
				return inventory;
			}
			// Enlarge inventry and add to end
			else if (i == inventory_size - 1)
			{
				calling_instance.inventory_size += 1;
				calling_instance.slots_filled += 1;
				inventory[i + 1][0] = thing;
				inventory[i + 1][1] = 1;
				inventory[i + 2][0] = item.nothing;
				inventory[i + 2][1] = 0;
				return inventory;
			}
		}
	}
	return inventory;
}

function inventory_Drop(droppingInstance,inventoryIndex,dropX,dropY)
{
	// Create new instance of dropped item at drop position
	global.CREATE_ID = droppingInstance.inventory[inventoryIndex][0];
	instance_create_layer(dropX,dropY,"Instances",Obj_Item);
	
	// Remove dropped item from inventory
	
	droppingInstance.inventory[inventoryIndex][1] = (droppingInstance.inventory[inventoryIndex][1] - 1);
	if (droppingInstance.inventory[inventoryIndex][1] == 0)
	{
		for (var i = inventoryIndex; i < droppingInstance.slots_filled; ++i;)
		{
			droppingInstance.inventory[i][0] = droppingInstance.inventory[i + 1][0];
			droppingInstance.inventory[i][1] = droppingInstance.inventory[i + 1][1];
		}
		
		droppingInstance.slots_filled -= 1;
	}
}

function inventory_Remove(droppingInstance,inventoryIndex)
{
	droppingInstance.inventory[inventoryIndex][1] = (droppingInstance.inventory[inventoryIndex][1] - 1);
	if (droppingInstance.inventory[inventoryIndex][1] == 0)
	{
		for (var i = inventoryIndex; i < droppingInstance.slots_filled; ++i;)
		{
			droppingInstance.inventory[i][0] = droppingInstance.inventory[i + 1][0];
			droppingInstance.inventory[i][1] = droppingInstance.inventory[i + 1][1];
		}
		
		droppingInstance.slots_filled -= 1;
	}
	

}

// check to see if an item is in an inventory
function has_item(item,inventory,inventory_size)
{
	for (var i = 0; i < inventory_size; ++i;)
	{
		if (inventory[i][0] == item)
		{
			return true;
		}
	}
	return false;
}

// find inventoy index of an item, return false if item absent
function get_item_index(inventory, inventory_size, item)
{
	for (var i = 0; i < inventory_size; ++i;)
	{
		if (inventory[i][0] == item)
		{
			return i;
		}
	}
	return false;
}