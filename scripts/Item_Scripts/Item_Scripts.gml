// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Finds the desired function in ItemsMaster and runs it.
function item_Script_Exec(item, command){
	for (var i = 0; Obj_Items_Master.ItemsMaster[item][itemstats.functions][i] != itemstats.nomore; i += 2){
		if (Obj_Items_Master.ItemsMaster[item][itemstats.functions][i] == command){
			Obj_Items_Master.ItemsMaster[item][itemstats.functions][i + 1]();  //Function call
			break;
		}
	}
}

function advanced_Ballistic_Analysis(){
	if (place_meeting(Obj_Player.x, Obj_Player.y, Obj_RoomD23)){
		Obj_QuestTracker.evidence_array[2] = true;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.content = "Found murder weapon ballistics. Ready to match. Debris found in wounds is consistent\nwith a shrapnel gun. Deadly at short range, but very slow to reload between shots.";
		instance_destroy(Obj_Inventory_window);
		}
	
	else{
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.content = "Nothing to analyze.";
		instance_destroy(Obj_Inventory_window);
	}
}

function advanced_Fingerprint_Scan(){

	if (place_meeting(Obj_Player.x, Obj_Player.y, Obj_RoomD23)){
		Obj_QuestTracker.evidence_array[2] = true;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.content = "Found murder suspect fingerprints.";
		instance_destroy(Obj_Inventory_window);
		}
	
	else{
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.content = "No fingerprints found.";
		instance_destroy(Obj_Inventory_window);
	}
}