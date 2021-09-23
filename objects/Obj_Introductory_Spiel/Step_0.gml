Obj_Player.control = false;

if (keyboard_key == vk_escape)
{
	bubble_count += 1;
	
	if (bubble_count == 2)
	{
		Obj_Player.control = false;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.x = Obj_Player.x - 200;
		Obj_Word_Bubble.y = Obj_Player.y - 50;
		Obj_Word_Bubble.content = "Any firearm discovered must be\ndestroyed and its pieces must be\nreturned as proof.\n\nFuther, its maker must be\nbrought to justice.";
		Obj_Word_Bubble.lines_multiple = 7;
		Obj_Word_Bubble.image_xscale = 5.5;
		Obj_Word_Bubble.image_yscale = 2.8;
		Obj_Word_Bubble.Xmod = 30;
	}
	
	else if (bubble_count == 3)
	{
		Obj_Player.control = false;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.x = Obj_Player.x - 200;
		Obj_Word_Bubble.y = Obj_Player.y - 50;
		Obj_Word_Bubble.content = "You may find the informant,\nnamed 'Sket,' in Residential\nCube C-3.1 for additional\ninformation.\n\nNo additional information will\nbe forthcoming from this office.";
		Obj_Word_Bubble.lines_multiple = 8;
		Obj_Word_Bubble.image_xscale = 5.5;
		Obj_Word_Bubble.image_yscale = 3.2;
		Obj_Word_Bubble.Xmod = 30;
	}
	
	else if (bubble_count == 4)
	{
		Obj_Player.control = false;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.x = Obj_Player.x - 200;
		Obj_Word_Bubble.y = Obj_Player.y - 50;
		Obj_Word_Bubble.content = "Official documentation has been\nprovided to facilitate your\ninevitable success.";
		Obj_Word_Bubble.lines_multiple = 3;
		Obj_Word_Bubble.image_xscale = 5.5;
		Obj_Word_Bubble.image_yscale = 2;
		Obj_Word_Bubble.Xmod = 30;
	}
	
	else if (bubble_count == 5)
	{
		Obj_Player.control = false;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.x = Obj_Player.x - 200;
		Obj_Word_Bubble.y = Obj_Player.y - 50;
		Obj_Word_Bubble.content = "Failure will negatively impact\nyour credit rating and\nfuture prospects.";
		Obj_Word_Bubble.lines_multiple = 3;
		Obj_Word_Bubble.image_xscale = 5.5;
		Obj_Word_Bubble.image_yscale = 2;
		Obj_Word_Bubble.Xmod = 30;
	}
	
	else if (bubble_count == 6)
	{
		Obj_Player.control = false;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.x = Obj_Player.x - 200;
		Obj_Word_Bubble.y = Obj_Player.y - 50;
		Obj_Word_Bubble.content = "CONTROLS\nW = up   S = down\nA = left   D = right\nI = open inventory\nE = interact / menu select\nEsc = exit / main menu";
		Obj_Word_Bubble.lines_multiple = 7;
		Obj_Word_Bubble.image_xscale = 5.5;
		Obj_Word_Bubble.image_yscale = 3;
		Obj_Word_Bubble.Xmod = 30;
	}
	
	else if (bubble_count >=7)
	{
		Obj_Player.control = true;
		instance_destroy(self);
	}
}