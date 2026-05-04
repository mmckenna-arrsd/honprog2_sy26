/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D6A3223
/// @DnDComment : // Checks if the game is currently playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 06D57868
	/// @DnDComment : // Draws the base of the joystick
	/// @DnDParent : 3D6A3223
	draw_self();

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 68F5E220
	/// @DnDComment : // Draws the top head of joystick at adjusted locations
	/// @DnDParent : 3D6A3223
	/// @DnDArgument : "x" "joy_x"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "joy_y"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_joystick_tap"
	/// @DnDSaveInfo : "sprite" "spr_joystick_tap"
	draw_sprite(spr_joystick_tap, 0, x + joy_x, y + joy_y);
}