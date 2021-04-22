/// @description Set properties based on ItemID

// Set item identity
ItemID = global.CREATE_ID;
global.CREATE_ID = item.nothing;

// Update item sprite to match identity
if (ItemID != item.nothing)
{
	sprite_index = Obj_Items_Master.ItemsMaster[ItemID][itemstats.sprite];
}