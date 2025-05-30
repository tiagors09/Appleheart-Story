draw_self();

if (debug) {
	draw_rectangle(
			x + sprite_get_width(sprite_index) / 4,
			y - sprite_get_height(sprite_index) / 4,
			x + sprite_get_width(sprite_index) / 2,
			y + (sprite_get_height(sprite_index) / 4) - 1,
			true
	);

	draw_rectangle(
			x - sprite_get_width(sprite_index) / 4,
			y - sprite_get_height(sprite_index) / 4,
			x - (sprite_get_width(sprite_index) / 2) - 2,
			y + (sprite_get_height(sprite_index) / 4) - 1,
			true
	);
	
	draw_rectangle(
			x - (sprite_get_width(sprite_index) / 4) - 1,
			y - sprite_get_height(sprite_index) / 4,
			x + (sprite_get_width(sprite_index) / 4),
			y - (sprite_get_height(sprite_index) / 2) - 2,
			true
	);
	
	draw_rectangle(
			x - (sprite_get_width(sprite_index) / 4) - 1,
			y + sprite_get_height(sprite_index) / 4,
			x + (sprite_get_width(sprite_index) / 4),
			y + (sprite_get_height(sprite_index) / 2),
			true
	);
}