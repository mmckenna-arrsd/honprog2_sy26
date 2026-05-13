/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53E46CEE
/// @DnDArgument : "expr" "-5"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "health"
health += -5;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34783332
/// @DnDArgument : "var" "health"
/// @DnDArgument : "op" "3"
if(health <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36C25F5E
	/// @DnDParent : 34783332
	/// @DnDArgument : "expr" "50"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "OBJ_Score.Points"
	OBJ_Score.Points += 50;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5D69FCA0
	/// @DnDParent : 34783332
	instance_destroy();

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 48F56157
	/// @DnDParent : 34783332
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 22747BDE
	/// @DnDParent : 34783332
	/// @DnDArgument : "var" "RNDRMPNT"
	/// @DnDArgument : "max" "1900"
	RNDRMPNT = (random_range(0, 1900));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4EA1BC43
	/// @DnDParent : 34783332
	/// @DnDArgument : "ypos" "RNDRMPNT"
	/// @DnDArgument : "objectid" "OBJ_Bigrock"
	/// @DnDSaveInfo : "objectid" "OBJ_Bigrock"
	instance_create_layer(0, RNDRMPNT, "Instances", OBJ_Bigrock);}