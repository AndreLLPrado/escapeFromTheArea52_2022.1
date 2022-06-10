if instance_exists(obj_player){
	if(obj_player.visible && !obj_gameController.respawn && !obj_gameController.gameOver
	&& obj_gameController.startGame && !obj_gameController.pauseGame){
		move_towards_point(obj_player.x, obj_player.y,eSpeed);
		image_angle = point_direction(x,y, obj_player.x,obj_player.y)-90;
	}
	else{
		x = 0;
		y = 0;
		move_towards_point(x, y, 0);
	}
	
	/*if obj_player.respawn && obj_player.startGame{
		var test = random(10);
		if test < 5 {
			instance_destroy();
		}
	}*/
}

if hp <= 0{
	obj_gameController.scorePoints += valuePoints;
	//audio_play_sound(sfx_enemyDie,1, false);
	instance_destroy();
}
