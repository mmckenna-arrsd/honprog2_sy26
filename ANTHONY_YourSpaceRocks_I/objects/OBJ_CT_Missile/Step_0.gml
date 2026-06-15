/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 527AA469
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "4"
effect_create_below(4, x + 0, y + 0, 0, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 2E971D67
/// @DnDArgument : "direction" "OBJ_BT_Player.image_angle"
direction = OBJ_BT_Player.image_angle;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 340FA49A
/// @DnDArgument : "angle" "OBJ_BT_Player.image_angle"
image_angle = OBJ_BT_Player.image_angle;