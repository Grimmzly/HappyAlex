/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font1);

draw_set_alpha(alpha);
 
if narrateActive
{
		draw_text_ext_transformed(x,y,text,20,300,xscale,yscale,image_angle);
		if (alarm[0] = -1) alarm[0] = (room_speed * 2)
}

draw_set_alpha(1);