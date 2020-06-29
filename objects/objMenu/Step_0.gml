/// @description Insert description here
// You can write your code in this editor

menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
selection = keyboard_check_pressed(vk_enter);
menu_index += menu_move;

if(menu_index < 0){
	menu_index = buttons - 1;	//wrap to the next button
}
if(menu_index > buttons - 1){
	menu_index = 0;				//wrap to the next button
}

//play audio when switching between buttons
if(menu_index != last_selected){
	audio_play_sound(snd_menu_button, 1, false);
}

//select a menu button
if(selection){
	audio_play_sound(snd_menu_button, 1, false);
	switch(menu_index){
		case MENUSTATE.PLAY:
			scr_transition(TRANS_MODE.NEXT); 
			break;
		case MENUSTATE.SETTINGS:
			break;
		case MENUSTATE.EXIT:
			game_end();
			break;
	}
}
last_selected = menu_index;