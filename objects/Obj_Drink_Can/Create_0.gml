ItemID = item.drink_can;

//randomize();
var random_sprite = irandom(2);

switch (random_sprite)
{
	case 1:
		sprite_index = Spr_DrinkCan_A; 
		break;
	case 2:
		sprite_index = Spr_DrinkCan_B; 
		break;
}