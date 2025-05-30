var _right = keyboard_check_pressed(vk_right);
var _left = keyboard_check_pressed(vk_left);
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);

if (_right) 
	x += 16;
else if (_left) 
	x -= 16;

if (_up) 
	y -= 16;
else if (_down) 
	y += 16;

x = clamp(
	x, 
	sprite_get_width(sprite_index) / 2,
	room_width - (sprite_get_width(sprite_index) / 2)
);

y = clamp(
	y, 
	sprite_get_height(sprite_index) / 2,
	room_height - (sprite_get_height(sprite_index) / 2)
);