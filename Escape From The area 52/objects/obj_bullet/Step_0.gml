if place_meeting(x, y, obj_wall){
	instance_destroy();
}

if place_meeting(x, y, obj_enymy_base){
	obj_gameController.points += obj_enymy_base.valuePoints;
	instance_destroy(obj_enymy_base);
	instance_destroy();
}

hPos = window_get_width();
vPos = window_get_height();

if x > hPos or x < 0 {
	instance_destroy();
}

if y > vPos or y < 0 {
	instance_destroy();
}

if time < 0 {
	instance_destroy();
}
