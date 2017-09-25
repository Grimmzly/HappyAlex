/// @description 
if !(place_free(x,y))
{
	do { y-- } until (place_free(x,y));
}

