/// @desc scr_hop_success(rectangle)
/// @arg rectangle is the next green rectangle that the player wants to hop to

with(objPlayer){
	var _yTo = y + shift_hop;
	if(collision_rectangle(x, _yTo, x + sprite_width, sprite_height + _yTo, objGreenRectangle, false, true)){
		var inst = collision_rectangle(x, _yTo, x + sprite_width, sprite_height + _yTo, objGreenRectangle, false, true)
		if(x > inst.x && (x + sprite_width < inst.x + inst.sprite_width)){
			return true;
		}
	}
}

