Obj_Player.control = false;
total_income = Obj_Player.money;



bubble_count = 1;

function forensic_Value()
{
	discovery = Obj_Quest_Tracker.evidence_array[4] + Obj_Quest_Tracker.evidence_array[7];
	if (discovery == 0)
	{
		return "\nForensic Analysis - Failed = $0";
	}
	else if (discovery == 1)
	{
		total_income += 500;
		return "\nForensic Analysis - Partial = $500";
	}
	else if (discovery == 2)
	{total_income += 1000;
		return "\nForensic Analysis - Complete = $1000";
	}
	else
	{
		return "ERROR";
	}
	
}

function apprehended_Suspect()
{
	if (Obj_Quest_Tracker.evidence_array[10] == true)
	{
		total_income += 1000;
		return "\nSuspect Apprehended = $1000";
	}
	else
	{
		total_income -= 500;
		return "\nBounty Failed = $-500";
	}
}

function stolen_Electronics()
{
	if (Obj_Quest_Tracker.electronics_theft > 0)
	{
		Obj_Word_Bubble.lines_multiple += 1;
		image_yscale += 0.3;
		total_income -= Obj_Quest_Tracker.electronics_theft * 1000;
		return "\nWitnessed Stealing - Penalty = $-" + string(Obj_Quest_Tracker.electronics_theft * 1000);
	}
	else
	{
		return "";
	}
}

function medical_Bills()
{
	if (Obj_Player.alive == false)
	{
		Obj_Word_Bubble.lines_multiple += 2;
		image_yscale += 0.6;
		Obj_Word_Bubble.image_xscale += 2;
		total_income -= 150000;
		return "\nEmergency Mortality Reversal  = $-100,000" +
			"\nBionic Reconstruction = $-50,000";
	}
	else if (Obj_Player.injured == true)
	{
		Obj_Word_Bubble.lines_multiple += 1;
		image_yscale += 0.3;
		total_income -= 50000;
		return "\nBionic Reconstruction = $-50,000";
	}
	else
	{
		return "";
	}
}