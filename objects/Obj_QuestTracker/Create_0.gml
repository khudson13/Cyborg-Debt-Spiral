/// @description Insert description here

// Variables and functions for measuring progress on investigation

baxter_investigation = false; // asked Baxter about the gun
found_lock = false;           // found locked door

// Updates witness dialogues and variables as evidence is uncovered
function quest_update(evidence){
	switch (evidence){
		case "Skeeter":
			Obj_Barkeep.dialogue_options[1] = "I heard someone was trying to sell a firearm here";
			Obj_Barkeep.options_count += 1;
			break;
		case "Barkeep":
			Obj_Ernie.dialogue_options[1] = "I heard someone was trying to sell a gun";
			Obj_Ernie.options_count += 1;
			break
		case "Ernie":
			Obj_Baxter.dialogue_options[1] = "Heard someone tried to sell you a gun";
			Obj_Baxter.options_count += 1;
			break;
		case "Baxter":
			baxter_investigation = true;
			if (found_lock == true){
				Obj_Baxter.dialogue_options[2] = "D-2.3 is locked.";
				Obj_Baxter.options_count = 3;
			}
			break;
		case "D-2.3":
			found_lock = true;
			if (baxter_investigation == true){
				Obj_Baxter.dialogue_options[2] = "D-2.3 is locked.";
				Obj_Baxter.options_count = 3;
			}
			break;
	}
}