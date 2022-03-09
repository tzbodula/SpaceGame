active_cam = camera_get_active()

if active_cam = view_camera[0]
	then active_cam = view_camera[1] and view_port = 1
	
if active_cam = view_camera[1]
	then active_cam = view_camera[0] and view_port = 0


view_set_camera (view_port, active_cam)