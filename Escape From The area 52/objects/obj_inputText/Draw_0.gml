draw_self();
draw_set_valign(fa_middle);
draw_text(x-100,y, "Insert your name: " + inputName);

if keyboard_check(vk_enter){
	obj_gameController.nameInputed = true;
	visible = false;
}
