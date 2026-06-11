/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 6A602BB7
/// @DnDArgument : "angle" "891"
/// @DnDArgument : "angle_relative" "1"
image_angle += 891;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 49EBD2F6
/// @DnDComment : Teleport & self-deletion
var l49EBD2F6_0;l49EBD2F6_0 = keyboard_check_pressed(vk_space);if (l49EBD2F6_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BB1691D
	/// @DnDParent : 49EBD2F6
	/// @DnDArgument : "var" "portalcool"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "8"
	if(!(portalcool == 8)){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7E51F243
		/// @DnDApplyTo : {OBJ_BT_Player}
		/// @DnDParent : 7BB1691D
		with(OBJ_BT_Player) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5DF1F34A
		/// @DnDParent : 7BB1691D
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "OBJ_BT_Player"
		/// @DnDSaveInfo : "objectid" "OBJ_BT_Player"
		instance_create_layer(x + 0, y + 0, "Instances", OBJ_BT_Player);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 1FA7B7A7
		/// @DnDParent : 7BB1691D
		/// @DnDArgument : "steps" "37"
		/// @DnDArgument : "alarm" "10"
		alarm_set(10, 37);
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 51BAF003
		/// @DnDParent : 7BB1691D
		/// @DnDArgument : "var" "wprsr"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "9000"
		/// @DnDArgument : "max" "9999"
		wprsr = floor(random_range(9000, 9999 + 1));
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 6555A319
		/// @DnDParent : 7BB1691D
		/// @DnDArgument : "angle" "wprsr"
		/// @DnDArgument : "angle_relative" "1"
		image_angle += wprsr;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 016E2943
		/// @DnDParent : 7BB1691D
		/// @DnDArgument : "expr" "8"
		/// @DnDArgument : "var" "portalcool"
		portalcool = 8;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 38C870BB
		/// @DnDParent : 7BB1691D
		/// @DnDArgument : "steps" "3000"
		/// @DnDArgument : "alarm" "5"
		alarm_set(5, 3000);}}