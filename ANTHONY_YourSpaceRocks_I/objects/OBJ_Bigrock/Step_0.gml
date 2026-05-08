/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A13172C
/// @DnDArgument : "var" "shouldrotate"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "2"
if(!(shouldrotate == 2)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41D7C8EA
	/// @DnDParent : 0A13172C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle = 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AFD1CC8
/// @DnDArgument : "var" "shouldrotate"
/// @DnDArgument : "value" "2"
if(shouldrotate == 2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 553644E0
	/// @DnDParent : 3AFD1CC8
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 3;}