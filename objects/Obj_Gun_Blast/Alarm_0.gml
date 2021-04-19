

instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
Obj_Word_Bubble.content = "YOU HAVE DIED";
Obj_Player.sprite_index = Spr_Player_Dead;
instance_destroy(Obj_Gun_Blast);