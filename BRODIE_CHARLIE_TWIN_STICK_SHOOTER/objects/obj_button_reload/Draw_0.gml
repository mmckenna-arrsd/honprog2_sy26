/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F3B316B
/// @DnDComment : // Checks if the game is currently playing
/// @DnDArgument : "var" "obj_game_manager.curr_game_state"
/// @DnDArgument : "value" "GAME_STATE.PLAYING"
if(obj_game_manager.curr_game_state == GAME_STATE.PLAYING)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 70611C62
	/// @DnDComment : // Updates reload button positions based on camera position and offsets
	/// @DnDParent : 3F3B316B
	/// @DnDArgument : "value" "camera_get_view_x(view_camera[0]) +1920 * 0.775"
	x = camera_get_view_x(view_camera[0]) +1920 * 0.775;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2DE5D0B2
	/// @DnDParent : 3F3B316B
	/// @DnDArgument : "value" "camera_get_view_y(view_camera[0]) +1080 * 0.625"
	/// @DnDArgument : "instvar" "1"
	y = camera_get_view_y(view_camera[0]) +1080 * 0.625;

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 2D3D57B6
	/// @DnDComment : // Draws reload button on screen
	/// @DnDParent : 3F3B316B
	draw_self();
}