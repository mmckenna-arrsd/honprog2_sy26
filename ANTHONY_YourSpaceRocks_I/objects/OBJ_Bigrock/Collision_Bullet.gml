/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 781C2459
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "OBJ_Score.Points"
OBJ_Score.Points += 50;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 14BFF8C6
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 426A0AE2
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7E7DA7B2
/// @DnDArgument : "var" "RNDRMPNT"
/// @DnDArgument : "max" "1900"
RNDRMPNT = (random_range(0, 1900));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 59C9AEFE
/// @DnDArgument : "ypos" "RNDRMPNT"
/// @DnDArgument : "objectid" "OBJ_Bigrock"
/// @DnDSaveInfo : "objectid" "OBJ_Bigrock"
instance_create_layer(0, RNDRMPNT, "Instances", OBJ_Bigrock);