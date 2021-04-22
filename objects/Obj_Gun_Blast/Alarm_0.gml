
if (decoy == false)
{
	if (has_item(item.Body_Armor ,Obj_Player.inventory, Obj_Player.inventory_size) == true)
	{
		Obj_Player.injured = true;
		Obj_Player.sprite_index = Spr_Player_Hurt;
		Obj_Player.control = true;
	}
	else
	{
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.content = "YOU HAVE DIED";
		Obj_Player.sprite_index = Spr_Player_Dead;
	}
}
else{
	Obj_Player.control = true;
}

instance_destroy(Obj_Gun_Blast);