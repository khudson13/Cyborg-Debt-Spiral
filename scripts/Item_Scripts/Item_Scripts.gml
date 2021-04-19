// FUNCTIONS USED BY SPECIFIC ITEMS

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
		Obj_Quest_Tracker.evidence_array[5] = true;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		if (Obj_Quest_Tracker.evidence_array[6] == true){
			Obj_Word_Bubble.content = "Found murder weapon ballistics. Debris found in wounds is consistent\nwith a shrapnel gun. Deadly at short range, but most are very slow to reload between shots.\nFindings matched to murder weapon.";
		}
		else{
			Obj_Word_Bubble.content = "Found murder weapon ballistics. Debris found in wounds is consistent\nwith a shrapnel gun. Deadly at short range, but very slow to reload between shots.";
		}
		instance_destroy(Obj_Inventory_window);
	}
	
	else if (place_meeting(Obj_Player.x, Obj_Player.y, Obj_Hideout)){
		Obj_Quest_Tracker.evidence_array[6] = true;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		if (Obj_Quest_Tracker.evidence_array[5] == true){
			Obj_Word_Bubble.content = "Analyzed weapon ballistics. Weapon matched to murder scene.";
		}
		else{
			Obj_Word_Bubble.content = "Analyzed weapon ballistics.";
		}
		instance_destroy(Obj_Inventory_window);
	}
	
	else{
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.content = "Nothing to analyze.";
		instance_destroy(Obj_Inventory_window);
	}
}

function advanced_Blood_Analysis(){
	if (place_meeting(Obj_Player.x, Obj_Player.y, Obj_RoomD23)){
		Obj_Quest_Tracker.evidence_array[9] = true;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.content = "Blood sample matched to victim. No other samples present. Inconclusive.";
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
		Obj_Quest_Tracker.evidence_array[2] = true;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		if (Obj_Quest_Tracker.evidence_array[3] == true){
			Obj_Word_Bubble.content = "Found murder suspect fingerprints. Matched to Crump."
		}
		else{
			Obj_Word_Bubble.content = "Found murder suspect fingerprints.";
		}
		instance_destroy(Obj_Inventory_window);
	}
	
	else if(place_meeting(Obj_Player.x, Obj_Player.y, Obj_Hideout)){
		Obj_Quest_Tracker.evidence_array[3] = true;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		if (Obj_Quest_Tracker.evidence_array[2] == true){
			Obj_Word_Bubble.content = "Crump's fingerprints recorded, matched to murder scene.";
		}
		else{
			Obj_Word_Bubble.content = "Crump's fingerprints recorded.";
		}
		instance_destroy(Obj_Inventory_window);
	}
	
	else{
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.content = "No relevant fingerprints found.";
		instance_destroy(Obj_Inventory_window);
	}
}

function advanced_Investigation(){
	if (place_meeting(Obj_Player.x, Obj_Player.y, Obj_RoomD23)){
		Obj_Quest_Tracker.evidence_array[8] = true;
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.content = "Completed analysis of crime scene. No apparent signs of struggle. Victim taken by surprise and killed by a single shot.";
		instance_destroy(Obj_Inventory_window);
		}
	
	else{
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.content = "Nothing to investigate.";
		instance_destroy(Obj_Inventory_window);
	}
}