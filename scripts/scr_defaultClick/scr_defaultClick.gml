/*if there is a level error then there is probably a whitespace in buttonText. NEEDS FIXING*/
if(object_get_name(object_index) == "objButton"){
	scr_transition(TRANS_MODE.GOTO, asset_get_index("level"+buttonText));
} 
else if(object_get_name(object_index) == "objPageButton"){
	scr_transition(TRANS_MODE.GOTO, asset_get_index(dest_levelselect));
}
