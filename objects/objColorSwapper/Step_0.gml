/// @description
/* Object that pulses 3 different times. After the 3rd pulse the next 
   pulse will turn the object red, killing the player
*/

// Inherit the parent event
event_inherited();


if(image_index = image_number - 1){
	warnings_left -= 1;
	if(warnings_left <= 0){
		image_speed = 0;
		image_index = 0;
	}
}

