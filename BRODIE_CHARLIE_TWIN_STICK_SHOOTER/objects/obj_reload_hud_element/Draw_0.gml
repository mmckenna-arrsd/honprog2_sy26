/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2B002BDA
/// @DnDComment : // Checks if the game is currently playing
/// @DnDArgument : "expr" "obj_game_manager.curr_game_state == GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CD6600F
	/// @DnDComment : // Updates positions based on camera position and offsets
	/// @DnDInput : 2
	/// @DnDParent : 2B002BDA
	/// @DnDArgument : "expr" "obj_player.x"
	/// @DnDArgument : "expr_1" "obj_player.y + 150"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = obj_player.x;
	y = obj_player.y + 150;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 202B0054
	/// @DnDComment : // Draws on screen
	/// @DnDParent : 2B002BDA
	draw_self();
}