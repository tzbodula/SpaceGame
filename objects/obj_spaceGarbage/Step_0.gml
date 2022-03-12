/// @description Insert description here
// You can write your code in this editor
if obj_spaceGarbage.x < 0 or obj_spaceGarbage.y > room_height {
	instance_destroy()
}

image_angle += rotationSpeed

// Make sure to reset the image angle to 0 after a full rotation
// in order to avoid hitting max real number capactiy
if image_angle >= 360 or image_angle <= -360
    image_angle = 0