// Player Input
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _jump = keyboard_check_pressed(vk_space);

// Calculate movement direction
var _move = _right - _left;
hsp = _move * walk_speed;
vsp = vsp + grv;

// Horizontal collision
if (place_meeting(x+hsp,y,obj_wall)){
	while(!place_meeting(x+sign(hsp), y, obj_wall)){
		x = x + sign(hsp)
	}
	hsp = 0;
}

// Vertical collision
if (place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x, y+sign(vsp), obj_wall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

if _jump and jump_count > 0{
	vsp = -10;
	jump_count-=1;
}


// Handles movespeed (horizontal)
x = x+hsp;
y = y+vsp;

