if (bubble_count == 1)
{
		bubble_count += 1;
	instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
	Obj_Word_Bubble.x = Obj_Player.x - 200;
	Obj_Word_Bubble.y = Obj_Player.y - 50;
	Obj_Word_Bubble.lines_multiple = 7;
	Obj_Word_Bubble.image_xscale = 5.5;
	Obj_Word_Bubble.image_yscale = 3;			
	Obj_Word_Bubble.Xmod = 30;
	Obj_Word_Bubble.Ymod = 15;
	Obj_Word_Bubble.content = "Pocket Money = $" + string(Obj_Player.money) + 
		forensic_Value() + apprehended_Suspect() + stolen_Electronics() + medical_Bills() + 
		"\n\nPROFIT = $" + string(total_income) + "!\n\nCONGRATULATIONS!!!";
}

if (keyboard_key == vk_escape)
{
	if (bubble_count == 2)
	{
		io_clear();
		bubble_count += 1;
		Obj_Player.control = false;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.x = Obj_Player.x - 200;
		Obj_Word_Bubble.y = Obj_Player.y - 50;
		Obj_Word_Bubble.lines_multiple = 4;
		Obj_Word_Bubble.image_xscale = 5.5;
		Obj_Word_Bubble.image_yscale = 2;
		Obj_Word_Bubble.Xmod = 30;
		Obj_Word_Bubble.content = "Created by Kendall Hudson" +
			"\nBase Background Tileset by Scut" +
			"\nAll Other Assets by Kendall Hudson";
	}
	else if (bubble_count == 3)
	{
		game_end();
	}
}