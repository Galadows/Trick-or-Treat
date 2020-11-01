/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
draw_sprite(SprBackground,0,0,0);
draw_sprite(SprUIBackground,0,0,0);
draw_sprite(SprTrickButton,0,0,0);
draw_sprite(SprTreatButton,0,0,0);

if objSelector.currentOpponent != "" and instance_exists(objSelector.currentOpponent) {
	draw_sprite(objSelector.currentOpponent.sprite_index,0,room_width/2,room_height/4+5);
}