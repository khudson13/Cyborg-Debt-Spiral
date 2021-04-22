
roomID = "Hideout Exit"; //Ident of unique room or category


function furnitureFill(instance){
	
	with (other){
		instance.access = function(){

			Obj_Player.x = 4544;
			Obj_Player.y = 4384;
			Obj_Player.control = true;
			instance_destroy(Obj_Furniture_Manager);
			
		}
	}
}


