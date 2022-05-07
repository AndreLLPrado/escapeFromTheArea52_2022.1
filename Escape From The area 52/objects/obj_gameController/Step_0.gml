#region PLAYERRESPAWN
if obj_player.visible == false {
	if pLifes > 0 {
		//Respawn
		pLifes -=1;
		obj_player.x = (window_get_width()/2);
		obj_player.y = (window_get_height()/2);
		obj_player.visible = true;
	}
	else{
		//Game Over
	}
}
#endregion
