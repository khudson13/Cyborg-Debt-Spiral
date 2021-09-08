if (attack == true)
{
	if (attack_duration < 10)
	{
		if (sprite_index == Spr_Sword_A_up)
		{
			mask_index = Spr_Sword_A_up
			y = Obj_Player.y - (3 * attack_duration);
			x = Obj_Player.x - (2 * attack_duration);
			++attack_duration;
		}
		if (sprite_index == Spr_Sword_A_down)
		{
			mask_index = Spr_Sword_A_down
			y = Obj_Player.y + (3 * attack_duration);
			x = Obj_Player.x + (2 * attack_duration);
			++attack_duration;
		}
		if (sprite_index == Spr_Sword_A_right)
		{
			mask_index = Spr_Sword_A_right
			y = Obj_Player.y - (2 * attack_duration);
			x = Obj_Player.x + (3 * attack_duration);
			++attack_duration;
		}
		if (sprite_index == Spr_Sword_A_left)
		{
			mask_index = Spr_Sword_A_left
			y = Obj_Player.y + (2 * attack_duration);
			x = Obj_Player.x - (3 * attack_duration);
			++attack_duration;
		}
	}
	else
	{
		mask_index = Spr_No_Mask;
		attack = false;
		attack_duration = 1;
	}
}