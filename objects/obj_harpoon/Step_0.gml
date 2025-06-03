var _col = collision_rectangle(
	x - (sprite_width / 4),
	y - (sprite_height / 4),
	x + (sprite_width / 4),
	y,
	tileset_collision,
	false,
	true
);

if (
	_col and 
	active
) {
    speed = 0;
	x = x;
	y = y;
	active = false;
}

if (
	not active and
	alarm[0] <= -1
) {
	y = lerp(y, yy, .025);
	if (round(y) <= round(yy))
		alarm[0] = game_get_speed(gamespeed_fps) * 1.5;
}

