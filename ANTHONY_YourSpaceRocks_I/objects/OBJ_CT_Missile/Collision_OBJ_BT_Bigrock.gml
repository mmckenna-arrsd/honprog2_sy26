/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 29911909
/// @DnDArgument : "angle" "180"
/// @DnDArgument : "angle_relative" "1"
image_angle += 180;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 6F8B08D9
/// @DnDArgument : "x" "200"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "200"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + 200, y + 200);