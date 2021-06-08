name = "Bar";
description = "This is the local bar.";
passable = false;
hasInventory = false; 
hasOptions = false;
unique = false; // check this before trying to access unique functionality

function access()
{
	instance_destroy(Obj_Furniture_Manager);
	instance_destroy(Obj_Interact);
	instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "UI_Windows", Obj_Dialogue);
	Obj_Dialogue.talking_ID = Obj_Barkeep;
	Obj_Dialogue.talking_to = Obj_Dialogue.talking_ID.NPC_name;
	Obj_Dialogue.dialogue_options = Obj_Dialogue.talking_ID.dialogue_options;
	Obj_Dialogue.response = Obj_Dialogue.talking_ID.starting_response;
	Obj_Dialogue.options_count = Obj_Dialogue.talking_ID.options_count;
	Obj_Dialogue.image_xscale = Obj_Dialogue.talking_ID.text_Xscale;
}