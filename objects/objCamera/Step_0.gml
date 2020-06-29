/// @description Insert description here
// You can write your code in this editor

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));

//update camera view position
camera_set_view_pos(cam, x, y);

