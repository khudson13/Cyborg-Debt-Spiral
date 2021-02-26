/// @description Initialize Variables


// previous position, used when movement is blocked
prevX = x;
prevY = y;

// True when currently controlling character and not inventory or something
control = true;
// Initialize Inventory - saves work by avoiding resizing later
inventory_size = 19;
inventory = inventory_create(inventory_size);
money = 0;


// INVENTORY VARIABLES
slots_filled = 0; // Number of inventory slots filled
total_weight = 0; // Total inventory weight