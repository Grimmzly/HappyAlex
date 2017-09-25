/// @description Insert description here

switch(global.textBullet)
{
case 0:
	fLine = [spr_you]
	sprite = fLine[irandom(0)]
	global.textBullet = 1;
	break;
	
case 1:
	sLine = [spr_look,spr_are]
	sprite = sLine[irandom(1)]
	global.textBullet = 2
	break;

case 2:
	tLine = [spr_great, spr_amazing,spr_perfect]
	sprite = tLine[irandom(2)];
	global.textBullet = 0;
	break;
}

sprite_index = sprite;
move_towards_point(mouse_x,mouse_y,10)

