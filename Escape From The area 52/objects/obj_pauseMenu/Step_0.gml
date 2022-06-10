#region INPUTS
//key_pause = keyboard_check(ord("P"));
#endregion

if keyboard_check_pressed(vk_space) {
	if instance_exists(obj_gameController){
		pauseGame = !pauseGame;
		visible = pauseGame;
		obj_gameController.pauseGame = pauseGame;
	}
}

if keyboard_check_pressed(vk_escape) && pauseGame {
	game_end();
}

if instance_exists(obj_player){
	msg = "W,A,S and D to move\n Mouse 0 to Shoot\nAuto Fire mode: " + onOff + "\nPress 'ESC' to Quit Game";
	if obj_player.autoFire {
		onOff = "ON";
	}
	else{
		onOff = "OFF";
	}
}
