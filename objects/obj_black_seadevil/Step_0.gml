if (
	collision_rectangle(
		x - (sprite_width / 3),
		y,
		x - (sprite_width / 2) - 2,
		y - (sprite_width / 4),
		tileset_collision,
		false,
		true
	) and 
	dir == 1
)
	dir = -1;
	
if (
	collision_rectangle(
		x +  (sprite_width / 3),
		y,
		x + (sprite_width / 2),
		y - (sprite_width / 4),
		tileset_collision,
		false,
		true
	) and
	dir == -1
)
	dir = 1;