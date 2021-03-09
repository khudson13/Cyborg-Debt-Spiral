/// @

/*
This is the generic base of objects used to define rooms within a level,
useful because individual instances of a given object are all identical
until run time. At run time furnitures can recieve their inventories and 
any other special elements from their 'room.'

Room objects can also define other special elemens of their room, such
as locked doors, traps, effects, etc.

Actual room stats are defined in the children of Obj_Room which are 
specific to either their unique room or category of room.
*/

roomID = ""; //Ident of unique room or category

/***FURNITURE FUNCTIONES ETC BELOw***

Furnishings and such in the room call a funciton here, such as cabinet(instance),
to get their variables set.

function furnitureFill(instance){
	
}

function door(instance){

}

*/