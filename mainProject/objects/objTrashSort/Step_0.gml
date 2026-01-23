var leftKey = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))
var rightKey = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))
var upKey = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
var downKey = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))


if global.lixo != 0 {
	if !wait {
	lixo = irandom_range(0,4)
	global.lixosprite = lixo
	instance_create_depth(x + ((lixo) * 56.8 ),y,0,objTrashMinigame)
	
	wait = true
	}
	
	if wait {
		if keyboard_check_pressed(vk_shift) && lixo = 0
		{
			global.lixocheck = 1
		}
			
		if leftKey && lixo = 1
		{
			global.lixocheck = 1
		}
			
		if downKey && lixo = 2
		{
			global.lixocheck = 1
		}
		
		if upKey && lixo = 3
		{
			global.lixocheck = 1
		}
			
		if rightKey && lixo = 4
		{
			global.lixocheck = 1
		}
		
		if global.lixocheck = 2 {
			global.lixocheck = 0
			wait = false
		}
		
	}
	
	
	
	
	
}

if global.lixo = 0 {
	global.checkpointXY[0] = 0
	global.checkpointXY[1] = 0
	room_goto_next()
}

//Quick fix if counter gets stuck 
//I added this in so I could bugfix without changing any of the code I wrote for the gamejam
//So please forgive the poorly written code

//if (global.lixocheck == 1) {time_source_start(checkTimer)};

