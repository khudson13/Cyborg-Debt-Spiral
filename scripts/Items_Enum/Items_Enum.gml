// This is a complete list of all items, organized by category
// These are used as tags, with associated item stats stored in a 2D array

// The itemstats enum is below
// Both enums together serve as index values for the master item array

enum item{

	// NULL TERMINATOR
	nothing,

	// MONEY AND VENDOR TRASH
	coin,
	passport,
	
	// BEVERAGE
	BiscuitWash,
	BottledWater,
	OldBogSweat,
	
	// CLOTHING
	Body_Armor,
	
	// KEYS
	ChunkKey,
	Manhole_Key,
	
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
	
	drink_can,
	empty_bottle,
	paper_trash_A,
	paper_trash_B,
	
	garbage_end,
	
	// MISC
	Decoy_Dummy,
	
	// NULL TERMINATOR
	nomore

}


enum itemstats{
	
	name,
	sprite,
	description,
	weight,
	worth,
	menu,
	functions,
	
	nomore
	
}
