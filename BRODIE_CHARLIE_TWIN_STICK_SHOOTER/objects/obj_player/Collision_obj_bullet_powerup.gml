/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3527CEE9
/// @DnDArgument : "var" "other.is_flashing"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(other.is_flashing <= -1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0881F5C8
	/// @DnDParent : 3527CEE9
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "var" "other.is_flashing"
	other.is_flashing = -2;}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E4163BB
instance_destroy();