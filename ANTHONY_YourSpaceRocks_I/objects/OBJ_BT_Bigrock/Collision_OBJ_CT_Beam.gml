/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53E46CEE
/// @DnDComment : Damage
/// @DnDArgument : "expr" "-9"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "health"
health += -9;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37C3EC44
/// @DnDArgument : "var" "Reversed"
if(Reversed == 0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 244B38E3
	/// @DnDParent : 37C3EC44
	/// @DnDArgument : "direction" "OBJ_BT_Player.image_angle"
	direction = OBJ_BT_Player.image_angle;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06058FBC
	/// @DnDParent : 37C3EC44
	/// @DnDArgument : "expr" "-0.5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "speed"
	speed += -0.5;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CCF7CF8
	/// @DnDParent : 37C3EC44
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "Reversed"
	Reversed = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 457144FD
	/// @DnDParent : 37C3EC44
	/// @DnDArgument : "steps" "80"
	/// @DnDArgument : "alarm" "9"
	alarm_set(9, 80);}