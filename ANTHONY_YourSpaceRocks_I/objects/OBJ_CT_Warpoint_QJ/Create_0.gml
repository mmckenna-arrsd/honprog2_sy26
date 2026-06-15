/// @DnDAction : YoYo Games.Movement.Add_Motion
/// @DnDVersion : 1
/// @DnDHash : 178F68D8
/// @DnDArgument : "dir" "OBJ_BT_Player.image_angle"
/// @DnDArgument : "speed" "555"
motion_add(OBJ_BT_Player.image_angle, 555);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 21DED510
/// @DnDArgument : "steps" "3"
/// @DnDArgument : "steps_relative" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 3 + alarm_get(1));