if (attack == true)
{
	if (attack_duration <= attack_end)
	{
		if (sprite_index == up_left_sprite)
		{
			mask_index = up_left_sprite
			y = Obj_Player.y - (3 * attack_duration);
			x = Obj_Player.x - (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == up_right_sprite)
		{
			mask_index = up_right_sprite
			y = Obj_Player.y - (3 * attack_duration);
			x = Obj_Player.x + (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == down_left_sprite)
		{
			mask_index = down_left_sprite
			y = Obj_Player.y + (3 * attack_duration);
			x = Obj_Player.x - (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == down_right_sprite)
		{
			mask_index = down_right_sprite
			y = Obj_Player.y + (3 * attack_duration);
			x = Obj_Player.x + (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == up_sprite)
		{
			mask_index = up_sprite
			y = Obj_Player.y - (3 * attack_duration);
			x = Obj_Player.x - (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == down_sprite)
		{
			mask_index = down_sprite
			y = Obj_Player.y + (3 * attack_duration);
			x = Obj_Player.x + (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == right_sprite)
		{
			mask_index = Spr_Sword_A_right
			y = Obj_Player.y - (2 * attack_duration);
			x = Obj_Player.x + (3 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == left_sprite)
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