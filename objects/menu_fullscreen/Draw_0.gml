/// @description Insert description here
// You can write your code in this editor
if(mouse_x == clamp(mouse_x, bbox_left, bbox_right) && mouse_y == clamp(mouse_y, bbox_top, bbox_bottom))
{
	draw_sprite(spr_fullscreen,1,x,y);
}
else draw_sprite(spr_fullscreen,0,x,y);