#region INPUTS
yes = keyboard_check(ord("Y"));
no = keyboard_check(ord("N"));
enter = keyboard_check(vk_enter);
esc = keyboard_check(vk_escape);
#endregion


/*
#region MENSSAGEMANAGER
if !confirm{
	msg = "Do you like create Scoreboard file?\nPress Y - to yes or Press N - to no"
	if yes {
		createFile = true;
		confirm = true;
	}
	if no {
		createFile = false;
		confirm = true;
	}
}
else{
	msg = "Confirm your option:\n Press ENTER - to confirm\n Press Esc - to cancel"
	if enter {
		next = true;
	}
	if esc {
		confirm = false;
	}
}
#endregion

#region FILEMANAGER
if next{
	if createFile{
		var file = file_text_open_write(working_directory + "score.txt");
		file_text_write_real(file,n);
		file_text_writeln(file);
		for(i = 0; i < n; i++){
			var p = "bot" + string(i + 1);
			var s = irandom_range(1000, 10000);
			file_text_write_string(file, p);
			file_text_writeln(file);
			file_text_write_real(file, s);
			file_text_writeln(file);
		}
		file_text_close(file);
	}
	room_goto_next();
}
#endregion
*/
