/// @description Initialize and populate master items array

/*
The master items array holds all default values for all items.
It's used for quick access of values. For example, if you need the
weight of a coin you'd just access ItemsMaster[item.coin][itemstats.weight]
*/

/* TEMPLATE FOR ADDING NEW ITEMS
		case item.:
			ItemsMaster[i][itemstats.name]   = "";
			ItemsMaster[i][itemstats.sprite] = Spr_;
			ItemsMaster[i][itemstats.description] = "";
			ItemsMaster[i][itemstats.weight] = ;
			ItemsMaster[i][itemstats.worth]  = ;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			ItemsMaster[i][itemstats.functions][0] = "";
			ItemsMaster[i][itemstats.functions][1] = ;
			ItemsMaster[i][itemstats.functions][2] = itemstats.nomore;
			break;
*/

ItemsMaster = [];

for (var i = item.nomore - 1; i >= item.nothing; --i;)
{
	
	// Stats for all the items, organized by category and in alphabetical order
	switch(i)
	{
		
		case item.Ballistic_Analysis_Kit:
			ItemsMaster[i][itemstats.name]   = "Ballistic Analysis Kit";
			ItemsMaster[i][itemstats.sprite] = Spr_Ballistic_Analysis_Kit;
			ItemsMaster[i][itemstats.description] = "A kit with a variety of tools and references for analyzing\nboth firearms and impacts by their munitions.";
			ItemsMaster[i][itemstats.weight] = 1;
			ItemsMaster[i][itemstats.worth]  = 20;
			ItemsMaster[i][itemstats.menu][0] = 3; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "use";
			ItemsMaster[i][itemstats.menu][2] = "look";
			ItemsMaster[i][itemstats.menu][3] = "drop";
			ItemsMaster[i][itemstats.functions][0] = "use";
			ItemsMaster[i][itemstats.functions][1] = advanced_Ballistic_Analysis;
			ItemsMaster[i][itemstats.functions][2] = itemstats.nomore;
			break;
		
		case item.BiscuitWash:
			ItemsMaster[i][itemstats.name]   = "Biscuit Wash";
			ItemsMaster[i][itemstats.sprite] = Spr_Biscuit_Wash;
			ItemsMaster[i][itemstats.description] = "Crude beer fermented from stale and moldy algae biscuits.";
			ItemsMaster[i][itemstats.weight] = 1;
			ItemsMaster[i][itemstats.worth]  = 5;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
		
		case item.Blood_Analysis_Kit:
			ItemsMaster[i][itemstats.name]   = "Blood Analysis Kit";
			ItemsMaster[i][itemstats.sprite] = Spr_Blood_Analysis_Kit;
			ItemsMaster[i][itemstats.description] = "A forensic kit of analyzing and matching samples of blood, both fresh and dried.";
			ItemsMaster[i][itemstats.weight] = 1;
			ItemsMaster[i][itemstats.worth]  = 10;
			ItemsMaster[i][itemstats.menu][0] = 3; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "use";
			ItemsMaster[i][itemstats.menu][2] = "look";
			ItemsMaster[i][itemstats.menu][3] = "drop";
			ItemsMaster[i][itemstats.functions][0] = "use";
			ItemsMaster[i][itemstats.functions][1] = advanced_Blood_Analysis;
			ItemsMaster[i][itemstats.functions][2] = itemstats.nomore;
			break;
		
		case item.Body_Armor:
			ItemsMaster[i][itemstats.name]   = "Body Armor";
			ItemsMaster[i][itemstats.sprite] = Spr_Body_Armor;
			ItemsMaster[i][itemstats.description] = "Good, stury body armor. Should help prevent sudden death.";
			ItemsMaster[i][itemstats.weight] = 10;
			ItemsMaster[i][itemstats.worth]  = 20;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
		
		case item.BottledWater:
			ItemsMaster[i][itemstats.name]   = "Bottled Water";
			ItemsMaster[i][itemstats.sprite] = Spr_Water_Bottle;
			ItemsMaster[i][itemstats.description] = "Cool, refreshing water. Probably distilled urine.\nIt's the best there is.";
			ItemsMaster[i][itemstats.weight] = 1;
			ItemsMaster[i][itemstats.worth]  = 0.50;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
			
		case item.ChunkKey:
			ItemsMaster[i][itemstats.name]  = "Chunk's key";
			ItemsMaster[i][itemstats.sprite] = Spr_ChunkKey;
			ItemsMaster[i][itemstats.description] = "A fancy room key with electronic encryption.";
			ItemsMaster[i][itemstats.weight] = 0;
			ItemsMaster[i][itemstats.worth]  = 0;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
			
		case item.coin:
			ItemsMaster[i][itemstats.name]   = "coin";
			ItemsMaster[i][itemstats.sprite] = Spr_Coin;
			ItemsMaster[i][itemstats.description] = "This is a coin. It buys things.";
			ItemsMaster[i][itemstats.weight] = .1;
			ItemsMaster[i][itemstats.worth]  = 1;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
		
		case item.Decoy_Dummy:
			ItemsMaster[i][itemstats.name]   = "Decoy Dummy";
			ItemsMaster[i][itemstats.sprite] = Spr_Decoy_Dummy;
			ItemsMaster[i][itemstats.description] = "It's a fake head on the end of a stick. It might fool someone who's jumpy enough or not paying attention.";
			ItemsMaster[i][itemstats.weight] = 5;
			ItemsMaster[i][itemstats.worth]  = 1;
			ItemsMaster[i][itemstats.menu][0] = 3; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "use";
			ItemsMaster[i][itemstats.menu][2] = "look";
			ItemsMaster[i][itemstats.menu][3] = "drop";
			ItemsMaster[i][itemstats.functions][0] = "use";
			ItemsMaster[i][itemstats.functions][1] = try_Decoy_Dummy;
			ItemsMaster[i][itemstats.functions][2] = itemstats.nomore;
			break;
		
		case item.drink_can:
			ItemsMaster[i][itemstats.name]   = "drink can";
			ItemsMaster[i][itemstats.sprite] = Spr_DrinkCan_A;
			ItemsMaster[i][itemstats.description] = "An old can which used to hold a beverage";
			ItemsMaster[i][itemstats.weight] = 0.01;
			ItemsMaster[i][itemstats.worth]  = 0;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
			
		case item.empty_bottle:
			ItemsMaster[i][itemstats.name]   = "Empty Bottle";
			ItemsMaster[i][itemstats.sprite] = Spr_Empty_Bottle_A;
			ItemsMaster[i][itemstats.description] = "An old glass bottle. Recyclable!";
			ItemsMaster[i][itemstats.weight] = 0.1;
			ItemsMaster[i][itemstats.worth]  = 0;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
			
		case item.Fingerprint_Scanner:
			ItemsMaster[i][itemstats.name]   = "Fingerprint Scanner";
			ItemsMaster[i][itemstats.sprite] = Spr_Fingerprint_Scanner;
			ItemsMaster[i][itemstats.description] = "This is a small, card shaped scanner capable of analyzing\nfingerprints from any surface.";
			ItemsMaster[i][itemstats.weight] = 1;
			ItemsMaster[i][itemstats.worth]  = 15;
			ItemsMaster[i][itemstats.menu][0] = 3; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "use"
			ItemsMaster[i][itemstats.menu][2] = "look";
			ItemsMaster[i][itemstats.menu][3] = "drop";
			ItemsMaster[i][itemstats.functions][0] = "use";
			ItemsMaster[i][itemstats.functions][1] = advanced_Fingerprint_Scan;
			ItemsMaster[i][itemstats.functions][2] = itemstats.nomore;
			break;
			
		case item.Gun:
			ItemsMaster[i][itemstats.name]   = "Shrapnel Gun";
			ItemsMaster[i][itemstats.sprite] = Spr_Gun;
			ItemsMaster[i][itemstats.description] = "Little more than a pipe and an electronic trigger, but filled with scrap metal and an explosive charge it's absolutely deadly.\nExeptionally illegal, just having it is a death penalty. This can be turned in for a bounty.";
			ItemsMaster[i][itemstats.weight] = 2;
			ItemsMaster[i][itemstats.worth]  = 100;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			ItemsMaster[i][itemstats.functions][0] = "";
			ItemsMaster[i][itemstats.functions][1] = 0;
			ItemsMaster[i][itemstats.functions][2] = itemstats.nomore;
			break;
			
		case item.homemade_knife:
			ItemsMaster[i][itemstats.name]   = "homemade knife";
			ItemsMaster[i][itemstats.sprite] = Spr_Homemade_Knife;
			ItemsMaster[i][itemstats.description] = "You got a knife, bro!";
			ItemsMaster[i][itemstats.weight] = 2;
			ItemsMaster[i][itemstats.worth]  = 1;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
			
		case item.Investigator_Kit:
			ItemsMaster[i][itemstats.name]   = "Investigator Kit";
			ItemsMaster[i][itemstats.sprite] = Spr_Investigator_Kit;
			ItemsMaster[i][itemstats.description] = "A case full of various useful tools for investigating a crime scene.";
			ItemsMaster[i][itemstats.weight] = 1;
			ItemsMaster[i][itemstats.worth]  = 10;
			ItemsMaster[i][itemstats.menu][0] = 3; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "use";
			ItemsMaster[i][itemstats.menu][2] = "look";
			ItemsMaster[i][itemstats.menu][3] = "drop";
			ItemsMaster[i][itemstats.functions][0] = "use";
			ItemsMaster[i][itemstats.functions][1] = advanced_Investigation;
			ItemsMaster[i][itemstats.functions][2] = itemstats.nomore;
			break;
			
		case item.Lockpick:
			ItemsMaster[i][itemstats.name]   = "Lockpick";
			ItemsMaster[i][itemstats.sprite] = Spr_Lockpick;
			ItemsMaster[i][itemstats.description] = "A simple electronic lockpick for simple locks";
			ItemsMaster[i][itemstats.weight] = 0.1;
			ItemsMaster[i][itemstats.worth]  = 10;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
			
		case item.Manhole_Key:
			ItemsMaster[i][itemstats.name]   = "Unusual Key";
			ItemsMaster[i][itemstats.sprite] = Spr_ManholeKey;
			ItemsMaster[i][itemstats.description] = "You're not sure what this opens, but it's probably important.";
			ItemsMaster[i][itemstats.weight] = 0;
			ItemsMaster[i][itemstats.worth]  = 0;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
			
		case item.nothing:
			ItemsMaster[i][itemstats.name]   = "nothing";
			ItemsMaster[i][itemstats.sprite] = Spr_Fail;
			ItemsMaster[i][itemstats.weight] = 0;
			ItemsMaster[i][itemstats.worth]  = 0;
			ItemsMaster[i][itemstats.menu][0] = 3; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			ItemsMaster[i][itemstats.menu][3] = "HAHAnope";
			break;
			
		case item.OldBogSweat:
			ItemsMaster[i][itemstats.name]   = "Old Bog Sweat";
			ItemsMaster[i][itemstats.sprite] = Spr_Old_Bog_Sweat;
			ItemsMaster[i][itemstats.description] = "This cheap, dirty distillate of fermented algae will knock you on the floor";
			ItemsMaster[i][itemstats.weight] = 1;
			ItemsMaster[i][itemstats.worth]  = 10;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
			
		case item.paper_trash:
			ItemsMaster[i][itemstats.name]   = "Paper Trash";
			ItemsMaster[i][itemstats.sprite] = Spr_PaperTrash_A;
			ItemsMaster[i][itemstats.description] = "Some scraps of algae-based waste paper. It's technically edible!";
			ItemsMaster[i][itemstats.weight] = .01;
			ItemsMaster[i][itemstats.worth]  = 0;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
			
		case item.Scrap_Electronics:
			ItemsMaster[i][itemstats.name]   = "Scrap Electronics";
			ItemsMaster[i][itemstats.sprite] = Spr_Scrap_Electronics;
			ItemsMaster[i][itemstats.description] = "Mixed electronic scrap, worth a little money.";
			ItemsMaster[i][itemstats.weight] = 1;
			ItemsMaster[i][itemstats.worth]  = 3;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;
			
		case item.Warrant:
			ItemsMaster[i][itemstats.name]   = "Bounty Warrant";
			ItemsMaster[i][itemstats.sprite] = Spr_Warrant;
			ItemsMaster[i][itemstats.description] = "Grants broad powers in persuit of a criminal.";
			ItemsMaster[i][itemstats.weight] = 0;
			ItemsMaster[i][itemstats.worth]  = 0;
			ItemsMaster[i][itemstats.menu][0] = 2; // Number of options in sub-menu
			ItemsMaster[i][itemstats.menu][1] = "look";
			ItemsMaster[i][itemstats.menu][2] = "drop";
			break;				
	}
}