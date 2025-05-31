draw_sprite_ext(
	sprite_index,
	0,
	x,
	y,
	dir,
	image_yscale,
	image_angle,
	c_white,
	image_alpha
);

if (debug) {
	draw_rectangle(
		x - (sprite_width / 3),
		y,
		x - (sprite_width / 2) - 2,
		y - (sprite_width / 4),
		true
	);
	
	draw_rectangle(
		x +  (sprite_width / 3),
		y,
		x + (sprite_width / 2),
		y - (sprite_width / 4),
		true
	);
}