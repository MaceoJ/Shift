 /// @description Insert description here
// You can write your code in this editor

cam = view_camera[0];
view_enabled = true;
view_visible[0] = true;
camera_set_view_size(cam, room_width, room_height);

shake_length  = 0;
shake_magnitude = 0;
shake_remain = 0;
x = 0;
y = 0;
	