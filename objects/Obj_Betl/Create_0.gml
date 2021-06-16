NPC_name = "Betl";

alive = true;

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
starting_response = "Nuh.";
dialogue_options = ["Hello"];
options_count = 1;
text_Xscale = 3;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic)
{
	switch(topic)
	{
		case "Hello":
			Obj_Dialogue.response = "I'm Betl, the shopkeeper. I'm not fully implemented yet.";
			Obj_Dialogue.response_height = LINE_HEIGHT;
			Obj_Dialogue.response_scale = 1;
			break;
	}
}

