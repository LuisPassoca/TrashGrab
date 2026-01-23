y+=4

if global.lixocheck = 1 {
	if place_meeting(x,y,objSkillBar){
		global.lixocheck=2
		global.lixo--
		audio_play_sound(soundTrash,0,0,0.25)
		instance_destroy()
	}
	else
		global.lixocheck=0
}

if y > 280 {
	global.lixocheck=2
	instance_destroy()
}