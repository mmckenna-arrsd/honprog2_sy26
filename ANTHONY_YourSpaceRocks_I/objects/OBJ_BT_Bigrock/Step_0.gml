/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AFD1CC8
/// @DnDComment : Checks if should rotate
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

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 75DA0B99
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41D7C8EA
	/// @DnDParent : 75DA0B99
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle = 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6163FE52
/// @DnDComment : If Destroyed
/// @DnDArgument : "var" "health"
/// @DnDArgument : "op" "3"
if(health <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B66AA71
	/// @DnDParent : 6163FE52
	/// @DnDArgument : "expr" "50"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "OBJ_AT_Score.Points"
	OBJ_AT_Score.Points += 50;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D180625
	/// @DnDParent : 6163FE52
	instance_destroy();

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 1297433F
	/// @DnDParent : 6163FE52
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7D1E3A47
	/// @DnDComment : Replicates
	/// @DnDParent : 6163FE52
	/// @DnDArgument : "var" "RNDRMPNT"
	/// @DnDArgument : "max" "1900"
	RNDRMPNT = (random_range(0, 1900));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3A540E32
	/// @DnDParent : 6163FE52
	/// @DnDArgument : "ypos" "RNDRMPNT"
	/// @DnDArgument : "objectid" "OBJ_BT_Bigrock"
	/// @DnDSaveInfo : "objectid" "OBJ_BT_Bigrock"
	instance_create_layer(0, RNDRMPNT, "Instances", OBJ_BT_Bigrock);}