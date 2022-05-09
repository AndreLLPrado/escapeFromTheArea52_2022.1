#region PLAYERRESPAWN
if obj_player.visible == false {
	if pLifes > 0 {
		//Respawn
		pLifes -=1;
		respawn = true;
		obj_player.x = (381);
		obj_player.y = (290);
		obj_player.visible = true;
	}
	else{
		//Game Over
		gameOver = true;
		obj_player.image_blend = c_red;
		obj_player.visible = true;
	}
}
if respawn{
	inv--;
	obj_player.image_alpha = 0.5;
	if inv <= 0{
		respawn = false;
		inv = invincibility;
		obj_player.image_alpha = 1;
	}
}
#endregion

#region RESETGAME
if reset{
	//Reset Player
	obj_player.x = 381;
	obj_player.y = 290;
	obj_player.image_blend = make_color_rgb(255,255,255);
	obj_player.image_alpha = 1;
	obj_player.visible = true;
	inv = invincibility;
	scorePoints = 0;
	pLifes = startLifes;

	//Reset Enemy
	instance_destroy(obj_enymy_base);
	obj_enemySpawn.sTime = obj_enemySpawn.sTimer;
	obj_enemySpawn.diff = 1;

	instance_create_depth(156,157,1, obj_enymy_base);
	gameOver = false;
	reset = false;
}
#endregion

#region STARTGAME
if keyboard_check_pressed(ord("T")){
	startGame = true;
}
#endregion
