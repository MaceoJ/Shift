/// @description Insert description here
/* alarm set to 3 sec intervals, unless it swaps to a killing object,
   then the timer becomes 6 secs
*/
image_speed = 1;
warnings_left = warnings;
if(warnings == 3){
	warnings = 1;
	alarm[0] = 540;
	alarm[1] = 180;
} else{
	warnings += 1;
	alarm[0] = 180;
}


