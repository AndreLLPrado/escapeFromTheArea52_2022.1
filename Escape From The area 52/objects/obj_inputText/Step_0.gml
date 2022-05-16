if instance_exists(obj_gameController){
	if obj_gameController.gameOver && !obj_gameController.nameInputed{
		visible = true;
		inputName = "";
		inputName = keyboard_string;
		
		if keyboard_check(vk_enter){
			nameSeted = inputName;
			visible = false;
			obj_gameController.nameInputed = true;
		}
		
	}
	else{
		visible = false;
	}
}
