

ItemID = item.Fingerprint_Scanner;

function use_case(command){
	switch (command){
		case "use":
			if (place_meeting(Obj_Player.x, Obj_Player.y, Obj_RoomD23)){
				Obj_QuestTracker.evidence_array[2] = true;
				instance_create_layer(Obj_Player.x, Obj_Player.y, "Instances", Obj_Word_Bubble);
				Obj_Word_Bubble.content = "Found murder suspect fingerprints";
				instance_destroy(Obj_Inventory_window);
				break;
			}
	}
}