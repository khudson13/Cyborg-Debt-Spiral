Obj_Player.control = false;

// Identify the object accessed and activate its code
if (instance_exists(Obj_Interact))
{
	furniture = Obj_Interact.furniture[| (Obj_Interact.selected_index - Obj_Interact.itemCount - Obj_Interact.npcCount)]
}
else
{
	furniture = instance_nearest(Obj_Player.x, Obj_Player.y, Obj_Furniture);
}

// Display variables
display_height = LINE_HEIGHT;
name = "";
description = "";      // Basic furniture text
selected_option = 0;

// Cause furniture manager to instantiate on top of furniture
x = furniture.x;
y = furniture.y;

// Get functionality from furniture instance
furniture.access();