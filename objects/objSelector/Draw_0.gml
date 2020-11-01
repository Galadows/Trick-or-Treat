/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if gameIslost{
	draw_text(0, 0, "You scored "+string(objPlayer.playerScore_prev)+" points");
	draw_text(0, 15, "Highscore: "+string(objPlayer.playerScore_highest));	
	draw_text(x, y, "You Lost\n Retry ?\n");
}else if gameIslost == false{
	draw_text(x, 0, objPlayer.time_string);
	draw_text(0, 0, objPlayer.playerScore);	
}