
// firing machine gun
if keyboard_check_pressed(vk_space){
	p = instance_create_layer(x, y - 5, "Instances", MGBullets)
	p.speed = 25
	p.direction = 90
}

// constant movement
direction = 90
speed = 1

//controlled movement
if keyboard_check(vk_up){
	direction = 90
	speed = planeSpeed
}
if keyboard_check(vk_right){
	direction = 30
	speed = planeSpeed
}
if keyboard_check(vk_left){
	direction = 150
	speed = planeSpeed
}
if keyboard_check(vk_down){
	direction = 90
	speed = 0.5
}

//camera and clamp
camera_set_view_pos(view_camera[0], clamp(x-500,0,room_width-1000),y-400)
