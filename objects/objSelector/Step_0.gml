/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if gameIson == true and gameIslost == false{
	show_debug_message(gameIson);
	show_debug_message(gameIslost);
	show_debug_message("Here's your random selection: ");
	//Monsters
	poolMonsters = [objGhost1,
	objGhost2];
	
	//Childs
	poolChilds = [objGhostChild1,
	objGhostChild2];
	
	nbChilds = 0;
	nbMonsters = 0;
	if random(10) < 5 and nbChilds < 3 or nbMonsters == 3 {
		show_debug_message("Child");
		nbMonsters = 0;
		nbChilds++;
		child_selected =random(ceil(array_length(poolChilds)))
		currentOpponent=poolChilds[child_selected];
	}else { 
		show_debug_message("Monster");
		nbChilds = 0;
		nbMonsters++;
		monster_selected =random(ceil(array_length(poolMonsters)))
		currentOpponent=poolMonsters[monster_selected];
		};
		instance_create_layer(x,y,1,currentOpponent);
		objPlayer.steps = ceil(objPlayer.steps_default);
		gameIson = false;
}else if gameIslost{
	if keyboard_check_pressed(ord("Q")){
		gameIslost = false;
		gameIson = true;
	}
}