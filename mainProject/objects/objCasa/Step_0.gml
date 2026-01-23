if place_meeting(x,y, objPlayer) {
	if createInstance = 0 {
		instance_create_depth(x+85,y+120,0,objKeyUp)
		createInstance = 1
	}
	if keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space)
		room_goto_next()
}
else {
	instance_destroy(objKeyUp)
	createInstance = 0
}