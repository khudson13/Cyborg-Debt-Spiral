/// @description Insert description here
// You can write your code in this editor

itemCount = 0;      // How many items.
npcCount = 0;       // How many npc's
furnitureCount = 0; // How many furniture.
totalCount = 0;     // How many collisions total.

// Three lists created for items, npc's, and furniture repsectively, then added
// together to create a complete list of collisions from which a menu will
// be generated.
items = ds_list_create();
ds_list_clear(items);
itemCount += instance_position_list(x,y,Obj_Item,items,true);
npc = ds_list_create();
ds_list_clear(npc);
npcCount += instance_position_list(x,y,Obj_NPC,npc,true);
furniture = ds_list_create();
ds_list_clear(furniture);
furnitureCount += instance_position_list(x,y,Obj_Furniture,furniture,true);
totalCount = itemCount + npcCount + furnitureCount;

// Put it all together for the master list
masterList = ds_list_create();
ds_list_clear(masterList);
masterList = items + npc + furniture;

selected_index = 0; // Selected index in collision menu.
display_height = 35;

// IF NO COLLISIONS
if (totalCount == 0){
	Obj_Player.control = true;
	instance_destroy(self);}

// IF ONLY ONE COLLISION
if (totalCount == 1){
	
	//IF ITEM
	if (masterList[0] == Obj_Item){
		Obj_Player.inventory = inventory_Add(Obj_Player,inventory, masterList[0].ItemID); // Copy item to inventory
		Obj_Player.total_weight += Obj_Items_Master.ItemsMaster[masterList[0].ItemID][itemstats.weight]; // Increase carried weight
		instance_destroy(masterList[0]);  // Destroy item instance on floor
		Obj_Player.control = true;
		instance_destroy(self);}
		
	//IF NPC	
	else if (masterList[0] == Obj_NPC){
		instance_create_layer(Obj_Player.x,Obj_Player.y,"UI_Windows",Obj_Dialogue);
		instance_destroy(self);}
		
	//IF FURNITURE
	else if (masterList[0] == Obj_Furniture){
		instance_create_layer(Obj_Player.x,Obj_Player.y,"UI_Windows",Obj_Furniture_Manager);
		instance_destroy(self);}
}