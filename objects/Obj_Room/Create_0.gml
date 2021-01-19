/// @

/*
This is the generic base of objects used to define rooms within a level,
useful because individual instances of a given object are all identical
until run time. At run time furnitures can recieve their inventories and 
any other special elements from their 'room.'

Actual room stats are defined in the children of Obj_Room which are 
specific to either their unique room or category of room.
*/

roomID = ""; //Ident of unique room or category

/***DEFINE INVENTORY CONTENTS BELOw***

for example:
cabinetInv[] = item.garbage,item.thingamabob,item.fu,item.bar;

*/