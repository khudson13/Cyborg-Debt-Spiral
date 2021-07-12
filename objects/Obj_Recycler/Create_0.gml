name = "Trash Eater";
description = "This machine dispenses\nmoney for recyclable trash.";
passable = false;
hasInventory = false; 
hasOptions = true;
options_list = []; 
options_list[0] = "Recycle Trash";
options_number = 1;

function access()
{
	Obj_Furniture_Manager.name = name;
	Obj_Furniture_Manager.description = description;
	Obj_Furniture_Manager.image_xscale += 0.2;
}

function options(option)
{
	switch (option)
	{
		case "Recycle Trash":	
			instance_create_layer(x,y,"UI_Windows",Obj_Recycler_UI);
			instance_destroy(Obj_Furniture_Manager);
	}
}