//basic movement
_xinput = (keyboard_check(key_right) || keyboard_check(key_alt_right)) - (keyboard_check(key_left) || keyboard_check(key_alt_left));
_yinput = (keyboard_check(key_down) || keyboard_check(key_alt_down)) - (keyboard_check(key_up) || keyboard_check(key_alt_up));

x += _xinput * my_speed;
y += _yinput * my_speed;