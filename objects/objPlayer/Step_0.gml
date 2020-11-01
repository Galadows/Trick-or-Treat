/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if !objSelector.gameIslost{
	steps--;
	seconds = (steps/room_speed) mod 60;
	time_string = string(seconds);
	if steps_default > 50{
		steps_default = 500-playerScore*5;
	}
}else {
	steps_default = 500-playerScore*5;
	}

if seconds == 0{
	objSelector.gameIslost = true;
	steps = 1000;
}

