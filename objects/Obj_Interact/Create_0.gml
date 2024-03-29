itemCount = 0;      // How many items.
npcCount = 0;       // How many npc's
furnitureCount = 0; // How many furniture.
totalCount = 0;     // How many collisions total.

// Three lists created for items, npc's, and furniture repsectively.
items = ds_list_create();
itemCount = collision_circle_list(x,y,50,Obj_Item,false,true,items,true);
npc = ds_list_create();
npcCount = collision_circle_list(x,y,50,Obj_NPC,false,true,npc,true);
furniture = ds_list_create();
furnitureCount = collision_circle_list(x,y,50,Obj_Furniture,false,true,furniture,true);
totalCount = itemCount + npcCount + furnitureCount;

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

selected_index = 0; // Selected index in collision menu.
display_height = LINE_HEIGHT;

// IF NO COLLISIONS
if (totalCount == 0)
{
	Obj_Player.control = true;
	instance_destroy(self);
}

// IF ONLY ONE COLLISION
if (totalCount == 1)
{
	
	//IF ITEM
	if (itemCount == 1)
	{
		Obj_Player.inventory = inventory_Add(Obj_Player, Obj_Player.inventory, Obj_Player.inventory_size, items[| 0].ItemID); // Copy item to inventory
		Obj_Player.total_weight += Obj_Items_Master.ItemsMaster[items[| 0].ItemID][itemstats.weight]; // Increase carried weight
		instance_destroy(items[| 0]);  // Destroy item instance on floor
		Obj_Player.control = true;
		instance_destroy(self);
	}
		
	//IF NPC	
	else if (npcCount == 1)
	{
		if (npc[| 0].hostile == true)
		{
			Obj_Player.control = true;
			instance_destroy(self);
		}
		else if (npc[| 0].alive == true)
		{
			instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "UI_Windows", Obj_Dialogue);
		}
		else
		{
			global.CALLING_INSTANCE = npc[| 0];
			instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "UI_Windows", Obj_Inventory_Swap);
		}
		instance_destroy(self);
	}
		
	//IF FURNITURE
	else if (furnitureCount == 1)
	{
		instance_create_layer(Obj_Player.x,Obj_Player.y,"UI_Windows",Obj_Furniture_Manager);
		instance_destroy(self);
	}
}