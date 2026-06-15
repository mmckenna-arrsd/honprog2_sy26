/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 50191682
direction = (direction + 180) % 360;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2C4F7E1A
instance_destroy();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2D9C040B
/// @DnDArgument : "var" "Rockdeathrepawnpoints"
/// @DnDArgument : "max" "9800"
Rockdeathrepawnpoints = (random_range(0, 9800));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1BC035CE
/// @DnDArgument : "xpos" "Rockdeathrepawnpoints"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "Rockdeathrepawnpoints"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "OBJ_BT_Bigrock"
/// @DnDSaveInfo : "objectid" "OBJ_BT_Bigrock"
instance_create_layer(x + Rockdeathrepawnpoints, y + Rockdeathrepawnpoints, "Instances", OBJ_BT_Bigrock);