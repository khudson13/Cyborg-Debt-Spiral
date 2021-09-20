NPC_name = "nobody";
life = 1;

alive = true;
hostile = true;

// NPC INVENTORY
inventory = inventory_create(19);
slots_filled = 0;

prevX = x;
prevY = y;

alarm[0] = 50;
leaping = false;
leap_count = 0;
goX = 0;
goY = 0;