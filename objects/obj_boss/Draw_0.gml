/// @description Insert description here
// You can write your code in this editor
if (bSpawn = true)
{
draw_sprite(spr_boss,0,x,y);

}
/// @description Insert description here

draw_set_halign(fa_center);
draw_text(x,y,bHealth);


if (global.bDialogue)
{
switch dialogueTree
{
	case 0:
		draw_text(x,y+40,"I see you've made it this far...");
		break;
	case 1:
		draw_text(x,y+40,"Do you know why you're here, Alex?");
		break;
	case 2:
		draw_text(x,y+40,"Everyone just loves you, don't they Alex?");
		break;
	case 3:
		draw_text (x,y+40,"Well what about me?! You took my friends, my family...");
		break;
	case 4:
		draw_text (x,y+40,"And now, I'll get my revenge.");
		break;
	case 5:
		global.bDialogue = false;
		bSpawn = true;
		obj_player.bossfight = true;
		break;
}
}

if (anger1)
{
	draw_text (x,y+40,"Will you shut up?!");
}
if (anger2)
{
anger1 = false;
	draw_text (x,y+40,"I'm trying to kill you! Enough!");
}

if (enraged)
{
	anger2 = false;
	draw_text (x,y+40, "GAH! You're so annoying!");
	
}

if (dead)
{
	enraged = false;
	draw_text (x,y+40, "...Fine. You win. You can have them all.. ");
	draw_text(x, y+55, "All I wanted was to be loved again.. The way I was before you showed up.");
	draw_text (x, y+70, "Just go.. I have nothing more to say to you. ");
}