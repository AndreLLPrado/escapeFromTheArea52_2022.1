#region DRAWLIFES
for(i = 0; i < pLifes; i++){
	draw_sprite(spr_life_placeholder,0,10 + (18 * i),10);
}
#endregion
#region DRAWSCORE
draw_text(10, 20,"Score: " + string(points));
#endregion
