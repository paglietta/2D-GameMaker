var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;

//moving boxes with a specific keybind 
if(keyboard_check(vk_space)){
	//check if the the player is colliding w the box
	if(place_meeting(x + _xinput * my_speed, y + _yinput * my_speed, obj_box)){
		var box = instance_place(x+_xinput * my_speed, y + _yinput * my_speed, obj_box);
		//check if the box exists
		if (box != noone){
			box.x += _xinput*my_speed;
			box.y += _yinput*my_speed;		
		}
	}
}

move_and_collide(_xinput * my_speed, _yinput * my_speed, obj_box)