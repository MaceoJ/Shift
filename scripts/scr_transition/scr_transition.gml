/// @desc scr_transition(mode, target_room)
/// @arg Mode sets transition mode between next, restart, and goto
/// @arg Traget sets target room when using goto mode

with(objTransition){
	mode = argument[0];
	if(argument_count > 1){
		target = argument[1];
	}
}
