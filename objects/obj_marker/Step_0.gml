/*
active_cam = camera_get_active()

if keyboard_check_pressed(ord("T")) {
	if !view_get_visible(0) {
    view_set_visible(0, true);
	view_set_visible(1, false);
}

	
if !view_get_visible(1) {
    view_set_visible(1, true);
	view_set_visible(0, false);
}

}
	/*if active_cam = view_camera[0]
		then active_cam = camera_get_default and view_port = 1
	
	if active_cam = camera_get_default
		then active_cam = view_camera[0] and view_port = 0


	view_set_camera (view_port, active_cam)
	
*/