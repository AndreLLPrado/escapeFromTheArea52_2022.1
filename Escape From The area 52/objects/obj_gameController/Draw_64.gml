#region DRAWLIFES
for(i = 0; i < pLifes; i++){
	draw_sprite(spr_life_placeholder,0,10 + (18 * i),10);
}
#endregion
#region DRAWSCORE
draw_text(10, 20,"Score: " + string(scorePoints));
#endregion


#region DEBUGSPAWN
draw_text(750, 20, "Difficulty(Spawn): " + string(obj_enemySpawn.diff));
draw_text(750, 40, "Timer: " + string((obj_enemySpawn.sTime / 30)));

var seconds = (obj_enemySpawn.tDiff / 30);
draw_text(750,60,"Difficulty Timer: " + string(seconds)+"s");

draw_text(10, 40,"invincibility: " + string((inv / 30)));
#endregion

#region RESTART
if gameOver{
	draw_text(450,300,"GameOver");
	draw_text(450,320,"Press R to restart");
	if keyboard_check_pressed(ord("R")) && gameOver{
		reset = true;
	}
}
#endregion

#region STARTGAME
if !startGame{
	draw_text(450,300,"Press T to start");
}
#endregion
