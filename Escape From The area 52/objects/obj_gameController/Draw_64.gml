#region DRAWLIFES
for(i = 0; i < pLifes; i++){
	draw_sprite(spr_life_placeholder,0,40 + (18 * i),30);
}
#endregion
#region DRAWSCORE
draw_text(40, 50,"Score: " + string(scorePoints));
draw_text(40, 70,"Best Score: " + string(bestScore));
#endregion


#region DEBUGSPAWN
draw_text(750, 20, "Difficulty(Enemy Spawn): " + string(obj_enemySpawanner.diff));
draw_text(750, 40, "Timer: " + string((obj_enemySpawanner.sTime / 30)));

var seconds = (obj_enemySpawanner.tDiff / 30);
draw_text(750,60,"Difficulty Timer: " + string(seconds)+"s");

draw_text(40, 90,"invincibility Time: " + string((inv / 30)));
#endregion

#region RESTART
if gameOver{
	if nameInputed{
		draw_text(450,300,"GameOver");
		draw_text(450,320,"Press R to restart");
		if keyboard_check_pressed(ord("R")) && gameOver{
			reset = true;
		}
	}
}
#endregion

#region STARTGAME
if !startGame{
	draw_text(600,250,"Press T to start\n\nW,A,S and D to move\nMouse 0 to Shoot");
}
#endregion

#region DEBUGSCORE
if debugMode || nameInputed{
	draw_text(1100, 20, "LEADERBOARD:");
	for (i = 0; i < n; i++){
		draw_text(1100, 40 + (20 * i), leaderboard[i] + ": " + string(scoreboard[i]));
	}
}
#endregion

#region AUTOFIRE
if instance_exists(obj_player){
	var onOff = "";
	if obj_player.autoFire {
		onOff = "ON";
	}
	else{
		onOff = "OFF";
	}
}
draw_text(300,30,"Auto fire: " + onOff);
draw_text(300, 50, "Press 'Q' to enable/disable Auto Fire\nPress 'SPACE' to pause game")
#endregion
