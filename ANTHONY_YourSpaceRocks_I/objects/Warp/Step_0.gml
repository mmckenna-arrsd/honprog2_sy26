/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 49EBD2F6
var l49EBD2F6_0;l49EBD2F6_0 = keyboard_check_pressed(vk_space);if (l49EBD2F6_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7E51F243
	/// @DnDApplyTo : {OBJ_BT_Player}
	/// @DnDParent : 49EBD2F6
	with(OBJ_BT_Player) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5DF1F34A
	/// @DnDParent : 49EBD2F6
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "OBJ_BT_Player"
	/// @DnDSaveInfo : "objectid" "OBJ_BT_Player"
	instance_create_layer(x + 0, y + 0, "Instances", OBJ_BT_Player);}