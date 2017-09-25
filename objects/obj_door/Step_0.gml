/// @description Insert description here

if (obj_player.pScore > 10) dooropen = true;
if (place_meeting(x,y,obj_player))
{
obj_player.pScore = 0;
room_goto_next();
}