if (lunging == true)
{
	switch (lunge_direction)	
	{
		case "RIGHT":
			draw_sprite(Spr_Lunge_Lines, lunge_time, x, y);
			break;
		case "LEFT":
			draw_sprite_ext(Spr_Lunge_Lines, lunge_time, x, y, 1, 1, 180, -1, 1);
			break;
		case "UP":
			draw_sprite_ext(Spr_Lunge_Lines, lunge_time, x, y, 1, 1, 90, -1, 1);
			break;
		case "DOWN":
			draw_sprite_ext(Spr_Lunge_Lines, lunge_time, x, y, 1, 1, 270, -1, 1);
			break;
		case "UP RIGHT":
			draw_sprite_ext(Spr_Lunge_Lines, lunge_time, x, y, 1, 1, 45, -1, 1);
			break;
		case "UP LEFT":
			draw_sprite_ext(Spr_Lunge_Lines, lunge_time, x, y, 1, 1, 145, -1, 1);
			break;
		case "DOWN RIGHT":
			draw_sprite_ext(Spr_Lunge_Lines, lunge_time, x, y, 1, 1, 315, -1, 1);
			break;
		case "DOWN LEFT":
			draw_sprite_ext(Spr_Lunge_Lines, lunge_time, x, y, 1, 1, 225, -1, 1);
			break;
	}
}