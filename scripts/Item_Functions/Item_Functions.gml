// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function inventory_Drop(droppingInstance,inventoryIndex,dropX,dropY){
	// Create new instance of dropped item at drop position
	global.CREATE_ID = droppingInstance.inventory[inventoryIndex];
	instance_create_layer(dropX,dropY,"Instances",Obj_Item);
	
	// Remove dropped item from inventory
	for (var i = inventoryIndex; i < droppingInstance.slots_filled; ++i;){
		droppingInstance.inventory[i] = droppingInstance.inventory[i + 1];
	}
	
	droppingInstance.slots_filled -= 1;
}