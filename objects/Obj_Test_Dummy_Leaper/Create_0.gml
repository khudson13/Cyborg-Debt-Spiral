NPC_name = "nobody";
life = 1;

alive = true;
hostile = true;
hit_points = 1;
rotting = false;
rot = 100;

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

// WEAPON
weapon = instance_create_layer(x, y, "Instances", Obj_Enemy_Sword_A);
weapon.owner = id;