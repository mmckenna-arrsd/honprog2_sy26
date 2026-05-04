/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4595045A
/// @DnDComment : // Checks if the button has not been pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(is_pressed == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 625F5542
	/// @DnDComment : // Sets the buttons scale to 95%
	/// @DnDParent : 4595045A
	/// @DnDArgument : "expr" "0.95"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 0.95;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FA1FD2A
/// @DnDComment : // Checks if the game is currently playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0D821CF1
	/// @DnDComment : // Calls the pause game function
	/// @DnDApplyTo : {obj_game_manager}
	/// @DnDParent : 0FA1FD2A
	/// @DnDArgument : "function" "pause_game"
	with(obj_game_manager) {
		pause_game();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CB7B0ED
	/// @DnDComment : // Sets the key variable to pressed$(13_10)// Sets the target scale$(13_10)// Speeds up the scale rate
	/// @DnDInput : 3
	/// @DnDParent : 0FA1FD2A
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "0.9"
	/// @DnDArgument : "expr_2" "0.9"
	/// @DnDArgument : "var" "is_pressed"
	/// @DnDArgument : "var_1" "target_scale"
	/// @DnDArgument : "var_2" "scale_rate"
	is_pressed = true;
	target_scale = 0.9;
	scale_rate = 0.9;
}