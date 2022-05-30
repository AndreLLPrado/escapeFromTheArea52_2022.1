//Controls
#region CONTROLS
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));
#endregion

//movimentation
#region MOVIMENTATION
if !obj_gameController.gameOver && obj_gameController.startGame && !obj_gameController.pauseGame{
	//Colisions
	hSpeed = (right - left) * pSpeed;

	if place_meeting(x + hSpeed, y, obj_wall){
		while !place_meeting(x + sign(hSpeed), y, obj_wall){
			x += sign(hSpeed);
		}
		hSpeed = 0;
	}

	x += hSpeed;

	vSpeed = (down - up) * pSpeed;

	//Collision
	if place_meeting(x, y + vSpeed, obj_wall){
		while !place_meeting(x, y + sign(vSpeed), obj_wall){
			y += sign(vSpeed);
		}
		vSpeed = 0;
	}

	y += vSpeed;

	//Look At mouse
	image_angle = point_direction(x,y,mouse_x, mouse_y)-90;
}
#endregion

//bullet shooting
#region SHOOT
if !obj_gameController.gameOver && obj_gameController.startGame && !obj_gameController.pauseGame{
	if mouse_check_button(mb_left) and shootCooldown < 1{
		instance_create_depth(obj_player.x, obj_player.y, -1, obj_bullet);
		shootCooldown = sCooldown;
	}
	shootCooldown -= 1;
}
#endregion
