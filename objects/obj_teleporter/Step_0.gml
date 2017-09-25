/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player))
{
	if !(reset)
	{
	obj_player.x = xloc;
	obj_player.y = yloc;
	}
	
	else if (reset) room_restart();
}