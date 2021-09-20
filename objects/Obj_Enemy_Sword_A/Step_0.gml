if (attack == true)
{
	if (attack_duration < 10)
	{
		if (sprite_index == up_left_sprite)
		{
			mask_index = up_left_sprite
			y = owner.y - (3 * attack_duration);
			x = owner.x - (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == up_right_sprite)
		{
			mask_index = up_right_sprite
			y = owner.y - (3 * attack_duration);
			x = owner.x + (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == down_left_sprite)
		{
			mask_index = down_left_sprite
			y = owner.y + (3 * attack_duration);
			x = owner.x - (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == down_right_sprite)
		{
			mask_index = down_right_sprite
			y = owner.y + (3 * attack_duration);
			x = owner.x + (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == up_sprite)
		{
			mask_index = up_sprite
			y = owner.y - (3 * attack_duration);
			x = owner.x - (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == down_sprite)
		{
			mask_index = down_sprite
			y = owner.y + (3 * attack_duration);
			x = owner.x + (2 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == right_sprite)
		{
			mask_index = Spr_Sword_A_right
			y = owner.y - (2 * attack_duration);
			x = owner.x + (3 * attack_duration);
			++attack_duration;
		}
		else if (sprite_index == left_sprite)
		{
			mask_index = Spr_Sword_A_left
			y = owner.y + (2 * attack_duration);
			x = owner.x - (3 * attack_duration);
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
else
{
	prevX = x;
	prevY = y;
	x = owner.x;
	y = owner.y;
	
	// WEAPON ORIENTATION
// moving up and right diagonal
if (x > prevX && y < prevY)
{
	sprite_index = Spr_Sword_A_up_right;
}
// moving up and left diagonal
else if (x < prevX && y < prevY)
{
	sprite_index = Spr_Sword_A_up_left;
}
// moving down and right diagonal
else if (x > prevX && y > prevY)
{
	sprite_index = Spr_Sword_A_down_right;
}
// moving down and left diagonal
else if (x < prevX && y > prevY)
{
	sprite_index = Spr_Sword_A_down_left
}
// moving up
else if (x == prevX && y < prevY)
{
	sprite_index = Spr_Sword_A_up;
}
// moving down
else if (x == prevX && y > prevY)
{
	sprite_index = Spr_Sword_A_down;
}
// moving left
else if (x < prevX && y == prevY)
{
	sprite_index = Spr_Sword_A_left;
}
// moving right
else if (x > prevX && y == prevY)
{
	sprite_index = Spr_Sword_A_right;
}
}