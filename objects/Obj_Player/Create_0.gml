/// @description Initialize Variables


// True when currently controlling character and not inventory or something
control = true;
// Initialize Inventory - saves work by avoiding resizing later
inventory = [];
for (var i = 0; i < INVENTORY_SIZE; ++i;)
{inventory[i] = item.nothing;}

evidence = [];
evidence_count = 0;

// INVENTORY VARIABLES
slots_filled = 0; // Number of inventory slots filled
total_weight = 0; // Total inventory weight