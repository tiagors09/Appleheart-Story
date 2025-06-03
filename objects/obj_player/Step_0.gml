var _right = keyboard_check_pressed(vk_right);
var _left = keyboard_check_pressed(vk_left);
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);

if (
	_right and 
	not collision_rectangle(
		x + sprite_get_width(sprite_index) / 4,
		y - sprite_get_height(sprite_index) / 4,
		x + sprite_get_width(sprite_index) / 2,
		y + (sprite_get_height(sprite_index) / 4) - 1,
		tileset_collision,
		false,
		true
	)
)
	x += step;
else if (
	_left and
	not collision_rectangle(
		x - sprite_get_width(sprite_index) / 4,
		y - sprite_get_height(sprite_index) / 4,
		x - (sprite_get_width(sprite_index) / 2) - 2,
		y + (sprite_get_height(sprite_index) / 4) - 1,
		tileset_collision,
		false,
		true
	)
) 
	x -= step;
else if (
	_up and
	not collision_rectangle(
		x - (sprite_get_width(sprite_index) / 4) - 1,
		y - sprite_get_height(sprite_index) / 4,
		x + (sprite_get_width(sprite_index) / 4),
		y - (sprite_get_height(sprite_index) / 2) - 2,
		tileset_collision,
		false,
		true
	)
)
	y -= step;
else if (
	_down and
	not collision_rectangle(
		x - (sprite_get_width(sprite_index) / 4) - 1,
		y + sprite_get_height(sprite_index) / 4,
		x + (sprite_get_width(sprite_index) / 4),
		y + (sprite_get_height(sprite_index) / 2),
		tileset_collision,
		false,
		true
	)
) 
	y += step;

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

if (
	place_meeting(
		x, y, 
		[
			obj_black_seadevil,
			obj_harpoon
		]
	)
) {
	instance_destroy(id, true);
}

var _door = collision_point(
	x,
	y - (sprite_height / 2),
	obj_door,
	false,
	true
);


if (_door)
	_door.open()