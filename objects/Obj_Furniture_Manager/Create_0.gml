/// @description Insert description here
// You can write your code in this editor


furniture = instance_nearest(Obj_Player.x, Obj_Player.y, Obj_Furniture);
furniture.accessed = true;

display_height = 35;
description = "";

x = furniture.x;
y = furniture.y;