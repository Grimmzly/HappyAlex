/// @description Insert description here
// You can write your code in this editor

if !(alpha >= 1) && (narrateActive) && !(fadeout) alpha += 0.03;
else if (fadeout) alpha -= 0.02;
if ((collision_circle(x,y,100,obj_player,false,true)) && (collisionActive)) narrateActive = true;
if (alpha <= 0) instance_destroy();