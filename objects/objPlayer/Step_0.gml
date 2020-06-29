/// @description Insert description here
// You can write your code in this editor

key_shift = keyboard_check_pressed(vk_shift);

if(key_shift){
	switch(state){
		case PLAYERSTATE.START:
		state = PLAYERSTATE.HOP;
		break;
	}
	y += shift_hop;
}

//Collision checks for the player
if(state == PLAYERSTATE.HOP){
	if(collision_rectangle(x, y, x + sprite_width, y + sprite_height, objGoal, false, true)){
		scr_transition(TRANS_MODE.NEXT);
	} else{
		if(!collision_line(x, y, x, y + sprite_height, objGreenRectangle, false, true)){
			instance_destroy();
		}
		if(!collision_line(x + sprite_width, y, x + sprite_width, y + sprite_height, objGreenRectangle, false, true)){
			instance_destroy();
		}
	}

}
/*var inst = collision_rectangle(x, y, x + sprite_width, sprite_height + y, objGreenRectangle, false, true)

if(rectangle_in_rectangle(x, y, x + sprite_width, y + sprite_height, 
					inst.x, inst.y, 
					inst.x + inst.sprite_width, inst.y + inst.sprite_height) != 1){
						instance_destroy()
					}*/

x += h_speed;