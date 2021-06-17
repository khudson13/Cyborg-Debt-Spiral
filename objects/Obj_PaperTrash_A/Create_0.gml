ItemID = item.paper_trash;

//randomize();
var random_sprite = irandom(2);

switch (random_sprite)
{
	case 1:
		sprite_index = Spr_PaperTrash_A; 
		break;
	case 2:
		sprite_index = Spr_PaperTrash_B; 
		break;
}