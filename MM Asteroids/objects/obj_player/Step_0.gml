/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 60B7E5B7
/// @DnDComment : pressing the up arrow changes direction
/// @DnDArgument : "key" "vk_up"
var l60B7E5B7_0;l60B7E5B7_0 = keyboard_check(vk_up);if (l60B7E5B7_0){	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 678B6745
	/// @DnDParent : 60B7E5B7
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7929189A
/// @DnDArgument : "key" "vk_left"
var l7929189A_0;l7929189A_0 = keyboard_check(vk_left);if (l7929189A_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BDC5DC9
	/// @DnDParent : 7929189A
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 5;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2DA36E8E
/// @DnDArgument : "key" "vk_right"
var l2DA36E8E_0;l2DA36E8E_0 = keyboard_check(vk_right);if (l2DA36E8E_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C2EAEBD
	/// @DnDParent : 2DA36E8E
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 4A66E16D
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 15F035F6
var l15F035F6_0;l15F035F6_0 = keyboard_check_pressed(vk_space);if (l15F035F6_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0365FE3E
	/// @DnDParent : 15F035F6
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);}