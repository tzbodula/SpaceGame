if !view_get_visible(0) {
    view_set_visible(0, true);
	view_set_visible(1, false);
}

	
if !view_get_visible(1) {
    view_set_visible(1, true);
	view_set_visible(0, false);
}

//view_set_camera (view_port, active_cam)