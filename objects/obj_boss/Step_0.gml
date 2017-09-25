

if (bHealth <= 75) && !(bHealth <= 50)  anger1 = true;
if (bHealth <= 50) && !(bHealth <= 25) anger2 = true;
if (bHealth <= 25) && !(bHealth <= 0) enraged = true;
if (bHealth <= 0) dead = true; 

if (global.bDialogue) && (keyboard_check_pressed(vk_space)) dialogueTree++;
if !(dead) && !(global.bDialogue) && (alarm[0] = -1)
{
	if (bHealth > 75)
	{
	alarm[0] = (room_speed / 2);
	}
	if (anger1)
	{
	alarm[0] = (room_speed / 3);
	}
	if (anger2)
	{
	alarm[0] = (room_speed / 4);
	}
	if (enraged)
	{
	alarm[0] = (room_speed / 6);
	}
}

if !(dead)&& !(global.bDialogue)
{
	if (obj_player.x > obj_boss.x)
	{
		if !(enraged)x += 8;
		else x += 12;
	}
	
	if (obj_player.x < obj_boss.x)
	{
		
		if !(enraged) x -= 8;
		else x -= 12;
	}

}