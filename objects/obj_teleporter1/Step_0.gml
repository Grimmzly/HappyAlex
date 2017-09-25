/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player))
{
	if !(reset) && !(obj_boss.dead)
	{
	obj_player.x = xloc;
	obj_player.y = yloc;
	}
	
	if (reset) && !(obj_boss.dead) room_restart();
	
	if (obj_boss.dead) room_goto(last_room);
}