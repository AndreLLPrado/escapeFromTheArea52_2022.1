scorePoints = 0;
bestScore = 0;
startLifes = 3;
pLifes = startLifes;
invincibility = 90;
inv = invincibility;
respawn = false;
gameOver = false;
reset = false;
nameInputed = false;
startGame = false;
playerName = "AND";

#region SCOREBOARD
scoreboard = [];
leaderboard = [];
#endregion

#region FILEMANAGER
fScore = file_text_open_read(working_directory+"score.txt");
n = file_text_read_real(fScore);
scoreboard = array_create(n);
leaderboard = array_create(n);
file_text_readln(fScore);
for(i = 0; i < n; i++){
	leaderboard[i] = file_text_read_string(fScore);
	file_text_readln(fScore);
	scoreboard[i] = file_text_read_real(fScore);
	file_text_readln(fScore);
}
file_text_close(fScore);

#endregion
