/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E459E6F
/// @DnDArgument : "var" "Reversed"
if(Reversed == 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 16D8282D
	/// @DnDParent : 2E459E6F
	instance_destroy();

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2D9C040B
	/// @DnDParent : 2E459E6F
	/// @DnDArgument : "var" "Rockdeathrepawnpoints"
	/// @DnDArgument : "max" "9800"
	Rockdeathrepawnpoints = (random_range(0, 9800));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1BC035CE
	/// @DnDParent : 2E459E6F
	/// @DnDArgument : "xpos" "Rockdeathrepawnpoints"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "Rockdeathrepawnpoints"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "OBJ_BT_Bigrock"
	/// @DnDSaveInfo : "objectid" "OBJ_BT_Bigrock"
	instance_create_layer(x + Rockdeathrepawnpoints, y + Rockdeathrepawnpoints, "Instances", OBJ_BT_Bigrock);}