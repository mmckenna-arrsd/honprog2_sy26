/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 7CF201A2
/// @DnDArgument : "times" "15"
repeat(15){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7150ABC1
	/// @DnDParent : 7CF201A2
	/// @DnDArgument : "var" "TempCord"
	/// @DnDArgument : "max" "9800"
	TempCord = (random_range(0, 9800));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 69EE6DEA
	/// @DnDParent : 7CF201A2
	/// @DnDArgument : "xpos" "TempCord"
	/// @DnDArgument : "ypos" "TempCord"
	/// @DnDArgument : "objectid" "OBJ_BT_Bigrock"
	/// @DnDSaveInfo : "objectid" "OBJ_BT_Bigrock"
	instance_create_layer(TempCord, TempCord, "Instances", OBJ_BT_Bigrock);}