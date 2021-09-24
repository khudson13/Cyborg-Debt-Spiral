if (win == true)
{
	draw_sprite_ext(Spr_Menu_Frame, 0, 608, 347, 1.5, 0.5, 0, 0, 1);
	draw_text(620, 355, "YOU WIN!");
}

if (fail == true)
{
	draw_sprite_ext(Spr_Menu_Frame, 0, 608, 347, 1.5, 0.5, 0, 0, 1);
	draw_text(620, 355, "YOU LOSE");
}