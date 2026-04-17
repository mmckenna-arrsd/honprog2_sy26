/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3AAA5CC3
/// @DnDArgument : "expr" "global.rock_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "speed"
speed += global.rock_speed;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 36B56017
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "360"
direction = (random_range(1, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5DB1EC04
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "max" "360"
image_angle = (random_range(0, 360));