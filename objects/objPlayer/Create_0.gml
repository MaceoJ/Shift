/// @description Insert description here
// You can write your code in this editor

//the amount the player moves downward
shift_hop = sprGreenRectangle.sprite_height;
h_speed = 0 ;

enum PLAYERSTATE{
	START,
	HOP
}

state = PLAYERSTATE.START;
