/// @description Insert description here
// You can write your code in this editor

if(mode != TRANS_MODE.OFF){
	if(mode == TRANS_MODE.INTRO){
		percent = max(0, percent - max((percent / 10), 0.005));
		//percent = max(0, percent - 0.05);  //simple way
	} else{
		percent = min(1.2, percent + max(((1.2 - percent) / 10), 0.005));
		//percent = min(1, percent + 0.05);  //simple way (2 - percent) / 10)
	}
	if(percent == 0) || (percent == 1.2){
		switch(mode){
		case TRANS_MODE.INTRO:
			mode = TRANS_MODE.OFF;
			break;
		case TRANS_MODE.NEXT:
			mode = TRANS_MODE.INTRO;
			room_goto_next();
			break;
		case TRANS_MODE.GOTO:
			mode = TRANS_MODE.INTRO;
			room_goto(target);
			break;
		case TRANS_MODE.RESTART:
			game_restart();
			break;
		}
	}
}