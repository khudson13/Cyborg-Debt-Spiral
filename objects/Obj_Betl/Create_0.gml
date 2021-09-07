NPC_name = "Betl";

alive = true;
hostile = false;

// NPC INVENTORY 
inventory_size = 19;
inventory = inventory_create(inventory_size);
slots_filled = 0;
inventory_Add(self, self.inventory, self.inventory_size, item.Body_Armor);
inventory_Add(self, self.inventory, self.inventory_size, item.Ballistic_Analysis_Kit);
inventory_Add(self, self.inventory, self.inventory_size, item.Blood_Analysis_Kit);
inventory_Add(self, self.inventory, self.inventory_size, item.Fingerprint_Scanner);
inventory_Add(self, self.inventory, self.inventory_size, item.Investigator_Kit);

// DIALOGUE STARTING OPTIONS
starting_response = "What're ya buying?";
dialogue_options = ["Buy/Sell"];
options_count = 1;
text_Xscale = 3;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic)
{
	switch(topic)
	{
		case "Buy/Sell":
			global.CALLING_INSTANCE = id;
			instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),"UI_Windows",Obj_Inventory_Swap);
			Obj_Inventory_Swap.commerce = true;
			instance_destroy(Obj_Dialogue);
			break;
	}
}

