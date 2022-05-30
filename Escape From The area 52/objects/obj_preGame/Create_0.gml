/*pX = 300;
pY = 300;
msg = "";*/
n = 10;

createFile = false;
confirm = false;
next = false;

if file_exists(working_directory + "score.txt"){
	room_goto_next();
}
else{
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
	room_goto_next();
}
