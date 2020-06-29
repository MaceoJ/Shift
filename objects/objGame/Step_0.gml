/// @description Insert description here
// You can write your code in this editor

if(!view_enabled){
	with(objCamera){
		cam = view_camera[0];
		view_enabled = true;
		view_visible[0] = true;
		camera_set_view_size(cam, room_width, room_height);
	}
}