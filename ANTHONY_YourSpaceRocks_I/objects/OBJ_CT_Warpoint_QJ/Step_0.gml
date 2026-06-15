/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 05392BC9
/// @DnDArgument : "angle" "OBJ_BT_Player.image_angle"
image_angle = OBJ_BT_Player.image_angle;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 14AB6CED
/// @DnDArgument : "direction" "OBJ_BT_Player.image_angle"
direction = OBJ_BT_Player.image_angle;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 6A602BB7
/// @DnDArgument : "angle" "891"
/// @DnDArgument : "angle_relative" "1"
image_angle += 891;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 49EBD2F6
var l49EBD2F6_0;l49EBD2F6_0 = keyboard_check_pressed(vk_space);if (l49EBD2F6_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5A4A3201
	/// @DnDParent : 49EBD2F6
	/// @DnDArgument : "key" "vk_control"
	var l5A4A3201_0;l5A4A3201_0 = keyboard_check(vk_control);if (l5A4A3201_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 13A03865
		/// @DnDParent : 5A4A3201
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "Portal"
		/// @DnDSaveInfo : "objectid" "Portal"
		instance_create_layer(x + 0, y + 0, "Instances", Portal);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7E51F243
		/// @DnDApplyTo : {OBJ_BT_Player}
		/// @DnDParent : 5A4A3201
		with(OBJ_BT_Player) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5DF1F34A
		/// @DnDParent : 5A4A3201
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "OBJ_BT_Player"
		/// @DnDSaveInfo : "objectid" "OBJ_BT_Player"
		instance_create_layer(x + 0, y + 0, "Instances", OBJ_BT_Player);
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 51BAF003
		/// @DnDParent : 5A4A3201
		/// @DnDArgument : "var" "wprsr"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "9000"
		/// @DnDArgument : "max" "9999"
		wprsr = floor(random_range(9000, 9999 + 1));
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 6555A319
		/// @DnDParent : 5A4A3201
		/// @DnDArgument : "angle" "wprsr"
		/// @DnDArgument : "angle_relative" "1"
		image_angle += wprsr;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 38C870BB
		/// @DnDParent : 5A4A3201
		/// @DnDArgument : "steps" "3000"
		/// @DnDArgument : "alarm" "5"
		alarm_set(5, 3000);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 29492F5A
		/// @DnDParent : 5A4A3201
		instance_destroy();}}