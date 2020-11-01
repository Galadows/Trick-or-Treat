/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if gameIson == true and gameIslost == false{
	show_debug_message("Here's your random selection: ");
	poolMonsters = [objMonster_Demon];
	poolChilds = [objChild_Regular];
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
		inst = instance_create_layer(x,y,1,currentOpponent);
		gameIson = false;
}else if gameIslost{
	if keyboard_check_pressed(vk_space){
		gameIslost = false;
		gameIson = true;
	}
}