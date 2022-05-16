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
	//Game configs
	nameInputed = false;
	scoreUpdated = false;
	
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

#region SCOREBOARD
if scorePoints > bestScore {
	bestScore = scorePoints;
}
	
//Update Scoreboard
if gameOver && nameInputed{
	if instance_exists(obj_inputText) && !scoreUpdated{
		var nAux = "";
		var sAux = 0;
		var scoreAtual = scorePoints;
		var nomeAtual = obj_inputText.inputName;
			
		for (i = 0; i < n; i++){
			if scoreAtual > scoreboard[i]{
				//for player points
				sAux = scoreboard[i];
				scoreboard[i] = scoreAtual;
				scoreAtual = sAux;
				//for player name
				nAux = leaderboard[i];
				leaderboard[i] = nomeAtual;
				nomeAtual = nAux;
			}
		}
		scoreUpdated = true;
		//SAVE IN FILE
		fScore = file_text_open_write(working_directory+"score.txt");
		file_text_write_real(fScore, n);
		file_text_writeln(fScore);
		for(i = 0; i < n; i++){
			file_text_write_string(fScore, string(leaderboard[i]));
			file_text_writeln(fScore);
			file_text_write_real(fScore, scoreboard[i]);
			file_text_writeln(fScore);
		}
		file_text_close(fScore);
	}
}
#endregion
