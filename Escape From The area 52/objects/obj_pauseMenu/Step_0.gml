#region INPUTS
//key_pause = keyboard_check(ord("P"));
#endregion

if keyboard_check_pressed(vk_escape) {
	if instance_exists(obj_gameController){
		pauseGame = !pauseGame;
		visible = pauseGame;
		obj_gameController.pauseGame = pauseGame;
	}
}

if keyboard_check_pressed(ord("Q")) && pauseGame {
	game_end();
}
