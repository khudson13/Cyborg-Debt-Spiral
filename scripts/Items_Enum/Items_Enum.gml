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
		
	// WEAPONS
	homemade_knife,
	combat_kife,
	
	// GARBAGE - SCENERY
	paper_trash_A,
	paper_trash_B,
	
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
	
	nomore
	
}
