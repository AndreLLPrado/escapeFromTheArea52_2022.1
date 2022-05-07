var pX = obj_player.x;
var pY = obj_player.y;


hSpeed = (pX) * eSpeed;
if place_meeting(x + hSpeed, y, obj_wall){
	while !place_meeting(x + sign(hSpeed), y, obj_wall){
		x += sign(hSpeed);
	}
	hSpeed = 0;
}

vSpeed = (pY) * eSpeed;

if place_meeting(x, y + vSpeed, obj_wall){
	while !place_meeting(x + sign(vSpeed), y, obj_wall){
		y += sign(vSpeed);
	}
	vSpeed = 0;
}

move_towards_point(hSpeed, vSpeed, eSpeed);

#region PLAYERCOLLISON
if place_meeting(x,y,obj_player){
	obj_player.visible = false;
}
#endregion
