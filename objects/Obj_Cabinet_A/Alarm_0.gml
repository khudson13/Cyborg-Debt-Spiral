/// @ Get Inventory

// This alarm event waits for other create events to finish

if (place_meeting(x,y,Obj_Room)){
	inventory = instance_place(x,y,Obj_Room).cabinetInv;
	slots_filled = instance_place(x,y,Obj_Room).slots_filled;
}