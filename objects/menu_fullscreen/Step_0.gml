/// @description Insert description here
// You can write your code in this editor
if(mouse_x == clamp(mouse_x, bbox_left, bbox_right) && mouse_y == clamp(mouse_y, bbox_top, bbox_bottom))
{
	if (mouse_check_button_pressed(mb_left))
		{
			if (window_get_fullscreen()) window_set_fullscreen(false)
			else window_set_fullscreen(true);
		}
}
