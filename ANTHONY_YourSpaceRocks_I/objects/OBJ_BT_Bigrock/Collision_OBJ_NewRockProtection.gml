/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 171FF3B1
/// @DnDArgument : "var" "Aperation"
/// @DnDArgument : "value" "1"
if(Aperation == 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BB609D9
	/// @DnDParent : 171FF3B1
	instance_destroy();

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 64915F46
	/// @DnDParent : 171FF3B1
	/// @DnDArgument : "var" "Rockdeathrepawnpoints"
	/// @DnDArgument : "max" "9800"
	Rockdeathrepawnpoints = (random_range(0, 9800));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 43CFBB22
	/// @DnDParent : 171FF3B1
	/// @DnDArgument : "xpos" "Rockdeathrepawnpoints"
	/// @DnDArgument : "ypos" "Rockdeathrepawnpoints"
	/// @DnDArgument : "objectid" "OBJ_BT_Bigrock"
	/// @DnDSaveInfo : "objectid" "OBJ_BT_Bigrock"
	instance_create_layer(Rockdeathrepawnpoints, Rockdeathrepawnpoints, "Instances", OBJ_BT_Bigrock);}