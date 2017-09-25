/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y-40,"playerLayer",obj_textBullet);	
	instance_create_layer(x,y-20,"PlayerLayer",obj_textBullet);
	instance_create_layer(x,y,"PlayerLayer",obj_textBullet);
if !(grounded) &&!(jumpCount >= 1)
{
vSpd = ((mouse_y - y) / abs(mouse_y - y)) * -20
hSpd = ((mouse_x - x) / abs(mouse_x - x)) * -20
jumpCount++;
}