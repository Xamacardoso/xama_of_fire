// Player Input
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _jump = keyboard_check_pressed(vk_space);

// Calculate movement direction
var _move = _right - _left;
hsp = _move * walk_speed;

// Horizontal collision
if (place_meeting(x+hsp,y,obj_wall)){
	
	hsp = 0;
}

// Handles movespeed (horizontal)
x = x+hsp;

