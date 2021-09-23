NPC_name = "nobody";
life = 1;

alive = true;
hostile = true;

// NPC INVENTORY
inventory = inventory_create(19);
slots_filled = 0;

// WEAPON
weapon = instance_create_layer(x, y, "Instances", Obj_Enemy_Sword_A);
weapon.owner = id;