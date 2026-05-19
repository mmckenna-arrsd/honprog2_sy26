/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 47545541
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 603F6E72
/// @DnDArgument : "var" "OBJ_Bigrock"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "24"
if(OBJ_BT_Bigrock < 24){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3F158D41
	/// @DnDParent : 603F6E72
	/// @DnDArgument : "var" "RNDRMPNT"
	/// @DnDArgument : "max" "1900"
	RNDRMPNT = (random_range(0, 1900));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4AEE6593
	/// @DnDParent : 603F6E72
	/// @DnDArgument : "xpos" "-4"
	/// @DnDArgument : "ypos" "RNDRMPNT"
	/// @DnDArgument : "objectid" "OBJ_Bigrock"
	/// @DnDSaveInfo : "objectid" "OBJ_Bigrock"
	instance_create_layer(-4, RNDRMPNT, "Instances", OBJ_BT_Bigrock);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 14FF773E
	/// @DnDParent : 603F6E72
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_rock_small"
	/// @DnDSaveInfo : "spriteind" "spr_rock_small"
	sprite_index = spr_rock_small;
	image_index += 0;}