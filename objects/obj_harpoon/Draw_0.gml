draw_sprite_ext(
	spr_chains,
	0,
	x,
	yy - sprite_height,
	image_xscale,
	(round(y) - round( yy))  / 16,
	image_angle,
	c_white,
	1
);
	
draw_self();

if (debug) {
	draw_rectangle(
		x - (sprite_width / 4),
		y - (sprite_height / 4),
		x + (sprite_width / 4),
		y,
		true
	);
}


