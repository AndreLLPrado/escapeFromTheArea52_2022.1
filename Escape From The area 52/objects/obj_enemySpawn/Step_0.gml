if instance_exists(obj_player){
	if obj_player.visible == true && !obj_gameController.respawn && !obj_gameController.gameOver 
	&& obj_gameController.startGame{
		tDiff--;
		sTime--;
		if sTime <= 0 {
			sTime = sTimer;
			
			for(i = 0; i< diff; i++){
				var range = random_range(-32, 32);
				instance_create_depth(x + range,y + range,1,obj_enymy_base);
			}
			
			if tDiff <= 0 {
				tDiff = difficultyTimer;
				if diff < Max{
					diff++;
				}
			}
		}
	}
}
