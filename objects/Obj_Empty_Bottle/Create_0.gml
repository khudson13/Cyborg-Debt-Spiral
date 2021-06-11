ItemID = item.empty_bottle;

//randomize();
var random_sprite = irandom(3);

switch (random_sprite)
{
	case 1:
		sprite_index = Spr_Empty_Bottle_A; 
		break;
	case 2:
		sprite_index = Spr_Empty_Bottle_B; 
		break;
	case 3:
		sprite_index = Spr_Empty_Bottle_C; 
		break;
}