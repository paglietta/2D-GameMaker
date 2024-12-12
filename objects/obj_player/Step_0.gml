_xinput = (keyboard_check(key_right) || keyboard_check(key_alt_right)) - (keyboard_check(key_left) || keyboard_check(key_alt_left));
_yinput = (keyboard_check(key_down) || keyboard_check(key_alt_down)) - (keyboard_check(key_up) || keyboard_check(key_alt_up));

//moving boxes with a specific keybind 
if(keyboard_check(vk_space)){
	//check if the the player is colliding w the box
	if(place_meeting(x + _xinput * my_speed, y + _yinput * my_speed, obj_box)){
		var box = instance_place(x+_xinput * my_speed, y + _yinput * my_speed, obj_box);
		//check if the box exists
		if (box != noone){
			if (!place_meeting(box.x + _xinput * my_speed, box.y + _yinput * my_speed, obj_Wall)) {
				box.x += _xinput * my_speed;
				box.y += _yinput * my_speed;
			}	
		}
	}
}

//collision and mov box
move_and_collide(_xinput * my_speed, _yinput * my_speed, my_tilemap)

if (health <= 0) {
    game_restart();
}

//backwards movement
if(_xinput > 0){
	image_xscale = 1;
}else if (_xinput < 0){
	image_xscale = -1;
}

//animation control
if (_xinput != 0 || _yinput != 0) {
    if (_xinput > 0) {
        image_speed = 0.2; 
        if (image_index < walk_right_start || image_index > walk_right_end) {
            image_index = walk_right_start;
        }
    } else if (_xinput < 0) {
        image_speed = 0.2;
        if (image_index < walk_left_start || image_index > walk_left_end) {
            image_index = walk_left_start;
        }
    } else if (_yinput > 0) {
        image_speed = 0.2;
        if (image_index < walk_down_start || image_index > walk_down_end) {
            image_index = walk_down_start;
        }
    } else if (_yinput < 0) {
        image_speed = 0.2;
        if (image_index < walk_up_start || image_index > walk_up_end) {
            image_index = walk_up_start;
        }
    }
} else {
    image_index = idle_frame;
    image_speed = 0; 
}