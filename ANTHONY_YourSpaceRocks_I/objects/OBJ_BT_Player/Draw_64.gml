/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6EEEB714
/// @DnDArgument : "x" "506"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Ammo: ""
/// @DnDArgument : "var" "spentammo "
draw_text(506, 10, string("Ammo: ") + string(spentammo ));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6251A9FC
/// @DnDArgument : "var" "chamber"
if(chamber == 0){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7423D6AE
	/// @DnDParent : 6251A9FC
	/// @DnDArgument : "x" "777"
	/// @DnDArgument : "y" "10"
	/// @DnDArgument : "caption" ""Reloading""
	draw_text(777, 10, string("Reloading") + "");}