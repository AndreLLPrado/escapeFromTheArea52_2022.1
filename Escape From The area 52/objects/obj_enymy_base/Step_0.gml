if instance_exists(obj_player){
	if(obj_player.visible && !obj_gameController.respawn && !obj_gameController.gameOver
	&& obj_gameController.startGame){
		move_towards_point(obj_player.x, obj_player.y,eSpeed);
		image_angle = point_direction(x,y, obj_player.x,obj_player.y)-90;
	}
	else{
		x = 0;
		y = 0;
	}
}

if hp <= 0{
	obj_gameController.scorePoints += valuePoints;
	instance_destroy();
}
