if (attack == true)
{
	if (attack_duration <= 10)
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
		
		if (attack_duration = 10)
		{
		if (collision_circle(x, y, 10, Obj_Player, false, true))
			{
				Obj_Player.hit_points -= 1;
			}
		}
	}
	else
	{
		mask_index = Spr_No_Mask;
		attack = false;
		attack_duration = 1;
		x = prevX;
		y = prevY;
	}
}
else
{
	prevX = x;
	prevY = y;
	x = owner.x;
	y = owner.y;
	
	
	// WEAPON ORIENTATION
	// moving up
	if (((x < (prevX + 1)) && (x > (prevX - 1))) && y < prevY)
	{
		sprite_index = up_sprite;
	}
	// moving down
	else if (((x < (prevX + 1)) && (x > (prevX - 1))) && y > prevY)
	{
		sprite_index = down_sprite;
	}
	// moving left
	else if (((y < (prevY + 1)) && (y > (prevY - 1))) && x < prevX)
	{
		sprite_index = left_sprite;
	}
	// moving right
	else if (((y < (prevY + 1)) && (y > (prevY - 1))) && x > prevX)
	{
		sprite_index = right_sprite;
	}
	// moving up and right diagonal
	else if (x > (prevX + 1) && y < prevY)
	{
		sprite_index = up_right_sprite;
	}
	// moving up and left diagonal
	else if (x < (prevX - 1) && y < prevY)
	{
		sprite_index = up_left_sprite;
	}
	// moving down and right diagonal
	else if (x > (prevX + 1) && y > prevY)
	{
		sprite_index = down_right_sprite;
	}
	// moving down and left diagonal
	else if (x < (prevX - 1) && y > prevY)
	{
		sprite_index = down_left_sprite;
	}
	
	
	// ATTACK CONDITIONALS
	// if attacking upward
	if (sprite_index == up_sprite || sprite_index == up_left_sprite || sprite_index == up_right_sprite)
	{
		if ((Obj_Player.y > (y - 50) && Obj_Player.y < y) && (Obj_Player.x > (x - 50) && Obj_Player.x < (x + 50)))
		{
			attack = true;
		}
	}
	// if attacking down
	else if (sprite_index == down_sprite || sprite_index == down_left_sprite || sprite_index == down_right_sprite)
	{
		if ((Obj_Player.y < (y + 50) && Obj_Player.y > y) && (Obj_Player.x > (x - 50) && Obj_Player.x < (x + 50)))
		{
			attack = true;
		}
	}
	// if attacking left
	else if (sprite_index == left_sprite || sprite_index == up_left_sprite || sprite_index == down_left_sprite)
	{
		if ((Obj_Player.x > (x - 50) && Obj_Player.x < x) && (Obj_Player.y > (y - 50) && Obj_Player.y < (y + 50)))
		{
			attack = true;
		}
	}
	// if attacking right
	else if (sprite_index == right_sprite || sprite_index == up_right_sprite || sprite_index == down_right_sprite)
	{
		if ((Obj_Player.x < (x + 50) && Obj_Player.x > x) && (Obj_Player.y > (y - 50) && Obj_Player.y < (y + 50)))
		{
			attack = true;
		}
	}
}