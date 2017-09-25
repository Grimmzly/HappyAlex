/// @description Insert description here
// You can write your code in this editor

if !(moveBF)
{
if (place_meeting(x,y-20,obj_player))
{
	hSpd = 3;
	obj_player.x += hSpd;	
}
}

else if (moveBF)
{

	if (place_meeting ( x+10,y,obj_obstacle)) hSpd = -2;
	if (place_meeting (x-10,y,obj_obstacle)) hSpd = 2;
	if (place_meeting(x,y-20,obj_player)) 
		{
		
		obj_player.x += hSpd;
		
				
		}	
}
x += hSpd;

