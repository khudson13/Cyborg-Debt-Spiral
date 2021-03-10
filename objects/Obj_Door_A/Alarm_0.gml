/// @description Insert description here
// You can write your code in this editor


// This alarm event waits for other create events to finish

if (place_meeting(x,y,Obj_Room)){
	instance_place(x,y,Obj_Room).door(self);
}