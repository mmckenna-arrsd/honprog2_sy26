/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 53FAB862
/// @DnDArgument : "xscale" "0.4"
/// @DnDArgument : "yscale" "0.4"
image_xscale = 0.4;image_yscale = 0.4;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 06156C27
/// @DnDArgument : "direction" "OBJ_BT_Player.image_angle"
/// @DnDArgument : "direction_relative" "1"
direction += OBJ_BT_Player.image_angle;

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 5541E6AD
move_wrap(1, 1, 0);