/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 004827AE
instance_destroy();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 279E51BD
/// @DnDArgument : "var" "Rockdeathrepawnpoints"
/// @DnDArgument : "max" "9800"
Rockdeathrepawnpoints = (random_range(0, 9800));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 124065B2
/// @DnDArgument : "xpos" "Rockdeathrepawnpoints"
/// @DnDArgument : "ypos" "Rockdeathrepawnpoints"
/// @DnDArgument : "objectid" "OBJ_BT_Bigrock"
/// @DnDSaveInfo : "objectid" "OBJ_BT_Bigrock"
instance_create_layer(Rockdeathrepawnpoints, Rockdeathrepawnpoints, "Instances", OBJ_BT_Bigrock);