/// @description Insert description here
// You can write your code in this editor
// STEP EVENT OF THE PLAYER OR SOME CONTROLLER OBJECT
var _cam_x = camera_get_view_x(view_camera[0]) ;
layer_x("parallax", _cam_x * 0.35); // Change the background layer name to whatever you use in the room editor
layer_x("bgwall", _cam_x * 0.5);   // Change the 0.25 and 0.5 values to change the speed of the effect