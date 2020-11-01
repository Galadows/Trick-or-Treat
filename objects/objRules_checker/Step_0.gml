/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
success = false;
if !objSelector.gameIslost{
	if keyboard_check_pressed(ord("Q")){
		i = 0;
		show_debug_message(array_length(objRules.tricks))
		while i < array_length(objRules.tricks){
			if objRules.tricks[i] == objSelector.currentOpponent or object_is_ancestor(objSelector.currentOpponent,objRules.tricks[i]){
			success = true;
	
			}
			i++
		}
		if success == false{
			objSelector.gameIslost = true;
		}
		show_debug_message(success)
	}

	if keyboard_check_pressed(ord("D")){
		i = 0;
		show_debug_message(array_length(objRules.treats))
		while i < array_length(objRules.treats){
			if objRules.treats[i] == objSelector.currentOpponent or object_is_ancestor(objSelector.currentOpponent,objRules.treats[i]){
			success = true;	
		
			}
			i++
		}
		if success == false{
			objSelector.gameIslost = true;
		}
		show_debug_message(success)
	}
}