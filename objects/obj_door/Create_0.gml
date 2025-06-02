visible = false;

open = function () {
	if (
		room_exists(
			room_next(
				room
			)
		)
	)
		room_goto_next();
}