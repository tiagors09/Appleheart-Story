speed = lerp(speed, 0, .5);

if (speed <= 0)
	instance_destroy(id);