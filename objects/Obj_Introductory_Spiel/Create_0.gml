instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
Obj_Word_Bubble.x = Obj_Player.x - 200;
Obj_Word_Bubble.y = Obj_Player.y - 50;
Obj_Word_Bubble.content = "Greetings Recruit - #1366-9013.\nYou are to follow up on intel\nregarding an illegal firearm\nin Algae Farm District EP-413.";
Obj_Word_Bubble.lines_multiple = 4;
Obj_Word_Bubble.image_xscale = 5.5;
Obj_Word_Bubble.image_yscale = 2;
Obj_Word_Bubble.Xmod = 30;

bubble_count = 1;