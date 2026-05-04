/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C759320
/// @DnDComment : // Variable for target scale
/// @DnDArgument : "expr" "1.0"
/// @DnDArgument : "var" "target_scale"
target_scale = 1.0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 064CAC24
/// @DnDComment : // Variables for scaling rate
/// @DnDInput : 2
/// @DnDArgument : "expr" "0.1"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "var" "scale_rate"
/// @DnDArgument : "var_1" "can_scale_at_rate"
scale_rate = 0.1;
can_scale_at_rate = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A203608
/// @DnDComment : // Variable for pressed state
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "is_pressed"
is_pressed = false;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3925ABA0
/// @DnDComment : // Checks if game is in touch mode
/// @DnDArgument : "expr" "global.is_touch"
if(global.is_touch)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 591272A6
	/// @DnDComment : // Sets button to larger sprite
	/// @DnDParent : 3925ABA0
	/// @DnDArgument : "spriteind" "spr_button_pause_mobile"
	/// @DnDSaveInfo : "spriteind" "spr_button_pause_mobile"
	sprite_index = spr_button_pause_mobile;
	image_index = 0;
}