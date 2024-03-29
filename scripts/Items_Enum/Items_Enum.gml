// This is a complete list of all items, organized by category
// These are used as tags, with associated item stats stored in a 2D array

// The itemstats enum is below
// Both enums together serve as index values for the master item array

enum item
{
	// NULL TERMINATOR
	nothing,

	// MONEY AND VENDOR TRASH
	Alloy_Ingot,
	coin,
	Envelope,
	Knick_Knack,
	Scrap_Electronics,
	Warrant,
	
	// BEVERAGE
	BiscuitWash,
	BottledWater,
	OldBogSweat,
	
	// CLOTHING
	Body_Armor,
	
	// KEYS
	Lockpick,
	Manhole_Key,
	Note,
	ZedKey,
	Zed_Note,
	
	// FORENSIC TOOS
	Ballistic_Analysis_Kit,
	Blood_Analysis_Kit,
	Fingerprint_Scanner,
	Investigator_Kit,
	
	// WEAPONS
	combat_kife,
	Gun,
	homemade_knife,
	
	// GARBAGE - SCENERY
	garbage_start,
	
	Broken_Gun,
	drink_can,
	empty_bottle,
	paper_trash,
	Rags,
	
	garbage_end,
	
	// MISC
	Decoy_Dummy,
	
	// NULL TERMINATOR
	nomore
}


enum itemstats
{
	name,
	sprite,
	description,
	weight,
	worth,
	menu,
	functions,
	
	nomore	
}
