if instance_exists(obj_player){
	if obj_player.visible == true && !obj_gameController.respawn && !obj_gameController.gameOver 
	&& obj_gameController.startGame && !obj_gameController.pauseGame{
		tDiff--;
		sTime--;
		if sTime <= 0 {
			sTime = sTimer;
			
			for(i = 0; i< diff; i++){
				var range = random_range(-32, 32);
				var spot = random(4);
				var objSpot = spots[spot];
				t = spot;
				//instance_create_depth(objSpot.x + range, objSpot.y + range,1,obj_enymy_base);
				instance_create_layer(objSpot.x + range, objSpot.y + range,"Instances",obj_enymy_base);
				
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
