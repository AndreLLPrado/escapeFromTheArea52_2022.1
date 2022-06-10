if instance_exists(obj_gameController){
	if obj_gameController.gameOver && !obj_gameController.nameInputed{
		visible = true;
		inputName = "";
		inputName = keyboard_string;
		if !clearString{
			keyboard_string = "";
			clearString = true;
		}
		
		
		if keyboard_check(vk_enter){
			nameSeted = inputName;
			visible = false;
			clearString = false;
			obj_gameController.nameInputed = true;
		}
	}
	else{
		visible = false;
	}
}
