/// @description Insert description here
if(keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(vk_escape) || obj_interiorTimer.seconds <= 0)
{
	room_goto(rm_shipInterior);	
}
