sTimer = 90;
sTime = sTimer;

difficultyTimer = 900;
tDiff = difficultyTimer;

diff = 1;

Max = 10;
debugMode = false;
t = 0;

#region CREATESPOTS
spots = array_create(4);
//Spot1
spotPos[0][0] = 384;
spotPos[0][1] = 0;

//Spot2
spotPos[1][0] = 800;
spotPos[1][1] = 288;

//Spot3
spotPos[2][0] = 0;
spotPos[2][1] = 288;

//Spot4
spotPos[3][0] = 416;
spotPos[3][1] = 576;

for(l = 0; l < 4; l++){
	var sX = spotPos[l][0];
	var sY = spotPos[l][1];
	spots[l] = instance_create_depth(sX, sY, 1, obj_enemySpawnSpot);
	
}

#endregion
