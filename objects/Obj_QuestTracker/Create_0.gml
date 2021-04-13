/// @description Insert description here

// Variables and functions for measuring progress on investigation

/* EVIDENCE ARRAY

A simple array of boolean values indicating whether a given piece of evidence has been found.
Indexes indicate evidence as follows:
0 = asked Baxter about the gun
1 = found the locked door at the murder scene
2 = found murderer fingerprints
3 = found Crump's fingerprints
4 = matched murderer fingerprints to Crump
5 = analyzed crime scene ballistics
6 = analyzed balistics of Crump's gun
7 = matched murder weapon to victim
8 = analyzed crime scene (general analysis)
9 = analyzed crime scene blood sample
10 = matched blood sample to victim
11 = blood analysis unproductive
*/

evidence_array = [];
for (var i = 0; i <= 11; ++i){
	evidence_array[i] = false;
}

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
			evidence_array[0] = true;
			if (evidence_array[1] == true){
				Obj_Baxter.dialogue_options[2] = "D-2.3 is locked.";
				Obj_Baxter.options_count = 3;
			}
			break;
		case "D-2.3":
			evidence_array[1] = true;
			if (evidence_array[0] == true){
				Obj_Baxter.dialogue_options[2] = "D-2.3 is locked.";
				Obj_Baxter.options_count = 3;
			}
			break;
	}
}