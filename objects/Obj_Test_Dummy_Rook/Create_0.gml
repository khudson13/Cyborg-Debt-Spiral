NPC_name = "nobody";
life = 1;

charging = false;
moving_direction = "";
targetX = -1;
targetY = -1;
prevX = x;
prevY = y;

alive = true;
hostile = true;
harmless = false;

// NPC INVENTORY
inventory = inventory_create(19);
slots_filled = 0;