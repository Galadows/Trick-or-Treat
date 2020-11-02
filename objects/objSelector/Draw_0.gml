/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
draw_set_font(Font2);
draw_set_halign(fa_center);

if gameIslost{
	draw_rectangle_color(0,0,room_width, room_height, c_black,c_black,c_black,c_black,0);
	draw_text(room_width/2, 0, "You scored: "+string(objPlayer.playerScore_prev)+" points");
	draw_text(room_width/2, 16, "Highscore: "+string(objPlayer.playerScore_highest));	
	draw_set_font(Font1);
	draw_text(room_width/2, room_height/3, "Game Over\n\n Retry ?\n");
	draw_set_font(Font2);
	draw_text(room_width/2, room_height/3 + 48, "Press space");
}else if gameIslost == false{
	draw_text(room_width/2, 0, objPlayer.time_string);
	draw_text(8, 0, objPlayer.playerScore);	
}

