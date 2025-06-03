tileset_collision = layer_tilemap_get_id(
	layer_get_id("Collision")
);

alarm[0] = game_get_speed(gamespeed_fps) * 1.5;

debug = false;

xx = x;
yy = y;

active = false;