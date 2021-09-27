/// @description Initialize Variables


depth = 1;

// previous position, used when movement is blocked
prevX = x;
prevY = y;

// Placeholder health measure
alive = true;
injured = false;
hit_points = 10;

// Specials
lunging = false;
lunge_time = 5;
lunge_direction = "";

// True when currently controlling character and not inventory or something
control = true;

// Initialize Inventory - saves work by avoiding resizing later
inventory_size = 19;
inventory = inventory_create(inventory_size);
money = 0;

// INVENTORY VARIABLES
slots_filled = 0; // Number of inventory slots filled
total_weight = 0; // Total inventory weight

inventory = inventory_Add(self, self.inventory, self.inventory_size, item.Envelope);