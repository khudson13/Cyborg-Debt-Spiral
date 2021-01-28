/// @description Insert description here
// You can write your code in this editor

ItemID = item.empty_bottle;
randomize();
var random_sprite = irandom(2);

switch (random_sprite){
	case 1:
		sprite_index = Spr_Empty_Bottle_A; break;
	case 2:
		sprite_index = Spr_Empty_Bottle_B; break;
}