/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 65416466
/// @DnDComment : // Checks if the button has not been pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(is_pressed == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 692E838D
	/// @DnDComment : // Sets the buttons scale to 95%
	/// @DnDParent : 65416466
	/// @DnDArgument : "expr" "0.95"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 0.95;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17509074
/// @DnDComment : // Checks if the game is currently playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0CAA8DD2
	/// @DnDComment : // Tells the player to reload if isnt already reloading
	/// @DnDParent : 17509074
	/// @DnDArgument : "expr" "obj_player.player_is_reloading"
	/// @DnDArgument : "not" "1"
	if(!(obj_player.player_is_reloading))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2EBAEAAE
		/// @DnDComment : // Sets the reloading to true
		/// @DnDParent : 0CAA8DD2
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "obj_player.player_is_reloading"
		obj_player.player_is_reloading = true;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 27E6E2F4
		/// @DnDComment : // Checks if reloading sound loop isn't playing
		/// @DnDParent : 0CAA8DD2
		/// @DnDArgument : "expr" "audio_is_playing(obj_player.reloading_sound)"
		/// @DnDArgument : "not" "1"
		if(!(audio_is_playing(obj_player.reloading_sound)))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6854ABC0
			/// @DnDComment : // Plays reloading sound loop
			/// @DnDParent : 27E6E2F4
			/// @DnDArgument : "expr" "audio_play_sound(snd_gun_reload, 100, true, 0.4, 0, 1.0)"
			/// @DnDArgument : "var" "obj_player.reloading_sound"
			obj_player.reloading_sound = audio_play_sound(snd_gun_reload, 100, true, 0.4, 0, 1.0);
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 470C943E
	/// @DnDComment : // Sets the key variable to pressed$(13_10)// Sets the target scale$(13_10)// Speeds up the scale rate
	/// @DnDInput : 3
	/// @DnDParent : 17509074
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