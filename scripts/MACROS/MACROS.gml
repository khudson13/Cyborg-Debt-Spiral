#macro TILE_SIZE 64

// Figure out how to access camera variables directly
#macro Camera_Center_X 750
#macro Camera_Center_Y 420

#macro PLAYER_INVENTORY_SIZE 19
/*
The CREATE_ID global simulates passing a value to the create event of an object.
This value tells the object, such as the generic Obj_Item, precisely what sort 
of a thing it should be and where to get its values.

This value is set by the object or script calling create_instance()
Always reset to item.nothing after value is passed.
*/
global.CREATE_ID = item.nothing;