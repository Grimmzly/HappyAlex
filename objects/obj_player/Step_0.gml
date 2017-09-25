/// @description What happens every step (second)

if !(audio_is_playing(sound0)) && (global.musicon) audio_play_sound(sound0,1,true);

if (keyboard_check_released(vk_escape)) 
	{
		room_goto(main_menu);
		global.resxloc = x;
		global.resyloc = y;
	}
if (global.resumed) {
global.resumed = false; x = global.resxloc; y = global.resyloc;
if (place_meeting(x,y+1,obj_obstacle)) grounded = true;
}
//////////////////////Don't touch this part. Go further down/////////////////////////
if (place_meeting(x,y+20,obj_obstacle1))
	{
		if (place_meeting(x + obj_obstacle1.hSpd,y,obj_obstacle))
			{
				x += (obj_obstacle1.hSpd * -1)
			}
		
	}

///////////////////Gravity///////////////////

if !(place_meeting(x,y+1,obj_obstacle)) vSpd += 2;
if place_meeting(x, y+vSpd, obj_obstacle) 
{
	grounded = true;
	jumpCount = 0;
	while !place_meeting(x, y+sign(vSpd), obj_obstacle) 
	{
		y += sign(vSpd);
	}
	vSpd = 0;
}

if (place_meeting(x,y-1,obj_obstacle))
{
	while !(place_free(x,y)) y++;
}

///////////////////Jumping///////////////////
if (grounded) && !(global.bDialogue) 
{
	if (keyboard_check_pressed(vk_space))
		{
			vSpd = -jmpSpd;
			grounded = false;
		}

}	




//Downwards gravity/jumping
y += clamp(vSpd,-25,25);

if !(hSpd == 0) 
	{
		if (hSpd > 0) hSpd--; 
			else if (hSpd < 0) hSpd++;
	if (grounded) hSpd = 0;
	if !(place_free(x + hSpd,y))
			{
				while (place_free(x + (hSpd / abs(hSpd)), y)) { x += (hSpd/ abs(hSpd)) }; 
				hSpd = 0;
			}
	else x += hSpd;
	}
////////////
///////Movement//////////////////
//Check if moving right
if !(global.bDialogue) 
{
	if (keyboard_check(ord("D")))
	{
		if (place_free(x + movSpd, y)) { x += movSpd; }
		
		else if !(place_free(x + movSpd,y))
			{
				while (place_free(x + 1, y)) { x++ }; 
			}
	}
	
		
//Check if moving left
	if (keyboard_check(ord("A")))
	{
		if (place_free(x - movSpd, y)) { x -= movSpd; }
		
		else if !(place_free(x - movSpd,y))
			{
				while (place_free(x - 1, y)) { x-- }; 
			}
	}
}




///////////////////////Edit under here/////////////////////////////


////////////Write your if here to pick up item//////////////
//Item name is obj_coin
//Collision check if place_meeting
//score variable is pScore

if (place_meeting(x,y,obj_coin))
{
	pScore++;
}

///////////////////////////////////////////////////////////

/////////////////Make this code only work if pScore is more than or equal to 1.//////////
// >= is more than or equal to.

if ((mouse_check_button_pressed(mb_right)) && pScore >= 1)
{
	instance_create_layer(clamp(irandom(940),90,940),690,"PlayerLayer",obj_coin);
}


////Summon text object

if (mouse_check_button_pressed(mb_left)) && !(global.bDialogue) && (global.canShoot)
{	
	newpower = true;
	if (alarm[0] = -1) alarm[0] = room_speed/6; 
}
