
roomID = "Hideout Opportunity";

function checkDoor(){
	if (instance_nearest(x, y, Obj_Door_A).passable == false)
	{
		instance_nearest(x, y, Obj_Door_A).passable = true;
		instance_nearest(x, y, Obj_Door_A).sprite_index = Spr_OpenDoor_A;
	}
}