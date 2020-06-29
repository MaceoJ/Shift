/// @description Insert description here
// You can write your code in this editor

menu_x = x;
menu_y = y;
button_h = 32;
button_w = 256;
button_padding = 16;

//buttons 
enum MENUSTATE{
PLAY,
SETTINGS,
EXIT
};
button[MENUSTATE.PLAY] = "Play";
button[MENUSTATE.SETTINGS] = "Settings";
button[MENUSTATE.EXIT] = "Exit";
buttons = array_length_1d(button);
menu_index = 0;
last_selected = 0;

