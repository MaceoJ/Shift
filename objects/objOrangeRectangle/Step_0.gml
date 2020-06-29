/// @description Insert description here
// You can write your code in this editor

if((x + sprite_width + h_speed) >= room_width){
	h_speed = -abs(h_speed);
}
if((x + h_speed) <= 0){
	h_speed = abs(h_speed);
}
x += h_speed;
