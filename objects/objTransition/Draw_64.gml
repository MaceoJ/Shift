/// @description Draw black bars

if(mode != TRANS_MODE.OFF){
	draw_set_color(c_black);
	draw_rectangle(w, 0, w - (percent * w), h, false);
	
}