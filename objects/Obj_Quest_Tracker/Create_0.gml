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
10 = captured suspect
*/

evidence_array = [];
for (var i = 0; i <= 10; ++i)
{
	evidence_array[i] = false;
}

// Updates witness dialogues and variables as evidence is uncovered
function quest_update(evidence)
{
	switch (evidence)
	{
		case "Sket":
			Obj_Barkeep.dialogue_options[1] = "I heard someone was trying\nto sell a firearm here";
			Obj_Barkeep.options_count += 1;
			Obj_Barkeep.text_Xscale = 5;
			break;
		case "Barkeep":
			Obj_Einren.dialogue_options[1] = "I heard someone was trying to sell a gun";
			Obj_Einren.options_count += 1;
			break
		case "Einren":
			Obj_Baxter.dialogue_options[1] = "Heard someone tried to sell you a gun";
			Obj_Baxter.options_count += 1;
			break;
		case "B'tax":
			evidence_array[0] = true;
			if (evidence_array[1] == true)
			{
				Obj_Baxter.dialogue_options[2] = "D-2.3 is locked.";
				Obj_Baxter.options_count = 3;
			}
			break;
		case "D-2.3":
			evidence_array[1] = true;
			if (evidence_array[0] == true)
			{
				Obj_Baxter.dialogue_options[2] = "D-2.3 is locked.";
				Obj_Baxter.options_count = 3;
			}
			break;
	}
}