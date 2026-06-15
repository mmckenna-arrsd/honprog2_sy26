/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75E71DAB
/// @DnDArgument : "expr" "99"
/// @DnDArgument : "var" "speed"
speed = 99;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 68FF858D
/// @DnDArgument : "direction" "OBJ_BT_Player.image_angle"
direction = OBJ_BT_Player.image_angle;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1457B494
/// @DnDArgument : "angle" "OBJ_BT_Player.image_angle"
image_angle = OBJ_BT_Player.image_angle;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 253F344D
/// @DnDArgument : "steps" "101"
/// @DnDArgument : "alarm" "7"
alarm_set(7, 101);