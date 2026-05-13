/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 5523AFE1
/// @DnDArgument : "key" "vk_up"
var l5523AFE1_0;l5523AFE1_0 = keyboard_check_pressed(vk_up);if (l5523AFE1_0){	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 3327736C
	/// @DnDParent : 5523AFE1
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "1.1"
	motion_add(image_angle, 1.1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5493004E
/// @DnDArgument : "key" "vk_right"
var l5493004E_0;l5493004E_0 = keyboard_check(vk_right);if (l5493004E_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A75CE36
	/// @DnDParent : 5493004E
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 00387F68
/// @DnDArgument : "key" "vk_left"
var l00387F68_0;l00387F68_0 = keyboard_check(vk_left);if (l00387F68_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A082D02
	/// @DnDParent : 00387F68
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4F9A894B
/// @DnDArgument : "key" "vk_shift"
var l4F9A894B_0;l4F9A894B_0 = keyboard_check(vk_shift);if (l4F9A894B_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 509DF196
	/// @DnDParent : 4F9A894B
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 6253FCCF
	/// @DnDParent : 4F9A894B
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "2"
	motion_add(image_angle, 2);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 142699FD
/// @DnDArgument : "var" "loaded"
if(loaded == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 010AE537
	/// @DnDParent : 142699FD
	/// @DnDArgument : "var" "chamber"
	/// @DnDArgument : "value" "1"
	if(chamber == 1){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 2886D256
		/// @DnDParent : 010AE537
		/// @DnDArgument : "key" "vk_alt"
		var l2886D256_0;l2886D256_0 = keyboard_check(vk_alt);if (l2886D256_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 22EAA81A
			/// @DnDParent : 2886D256
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "Beam"
			/// @DnDSaveInfo : "objectid" "Beam"
			instance_create_layer(x + 0, y + 0, "Instances", Beam);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 67971F53
			/// @DnDParent : 2886D256
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spentammo"
			spentammo += -1;}}}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 769201D0
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32C023A3
/// @DnDArgument : "var" "loaded"
if(loaded == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EA8E2BB
	/// @DnDParent : 32C023A3
	/// @DnDArgument : "var" "chamber"
	/// @DnDArgument : "value" "1"
	if(chamber == 1){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 7B28AFA2
		/// @DnDParent : 5EA8E2BB
		/// @DnDArgument : "key" "ord("E")"
		var l7B28AFA2_0;l7B28AFA2_0 = keyboard_check_pressed(ord("E"));if (l7B28AFA2_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 70D30EC7
			/// @DnDParent : 7B28AFA2
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "Bullet"
			/// @DnDSaveInfo : "objectid" "Bullet"
			instance_create_layer(x + 0, y + 0, "Instances", Bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1625EECF
			/// @DnDParent : 7B28AFA2
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "spentammo"
			spentammo += -1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3EB48D5E
			/// @DnDParent : 7B28AFA2
			/// @DnDArgument : "var" "chamber"
			chamber = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 55E48DE1
			/// @DnDParent : 7B28AFA2
			/// @DnDArgument : "steps" "19"
			/// @DnDArgument : "alarm" "11"
			alarm_set(11, 19);}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FB2451D
/// @DnDArgument : "var" "spentammo"
if(spentammo == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24F7C3E4
	/// @DnDParent : 7FB2451D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "loaded"
	loaded = 1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 22AF456E
/// @DnDArgument : "key" "ord("Q")"
var l22AF456E_0;l22AF456E_0 = keyboard_check_pressed(ord("Q"));if (l22AF456E_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1670E798
	/// @DnDParent : 22AF456E
	/// @DnDArgument : "expr" "25"
	/// @DnDArgument : "var" "spentammo"
	spentammo = 25;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F2867EB
	/// @DnDParent : 22AF456E
	/// @DnDArgument : "var" "loaded"
	loaded = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 731EAC59
	/// @DnDParent : 22AF456E
	/// @DnDArgument : "var" "chamber"
	chamber = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 58D9990E
	/// @DnDParent : 22AF456E
	/// @DnDArgument : "steps" "190"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 190);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5334BFFE
/// @DnDArgument : "var" "loaded"
/// @DnDArgument : "value" "1"
if(loaded == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 59B8E868
	/// @DnDParent : 5334BFFE
	/// @DnDArgument : "spriteind" "spr_player_unloaded"
	/// @DnDSaveInfo : "spriteind" "spr_player_unloaded"
	sprite_index = spr_player_unloaded;
	image_index = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 4526672A
	/// @DnDParent : 5334BFFE
	/// @DnDArgument : "key" "vk_shift"
	var l4526672A_0;l4526672A_0 = keyboard_check(vk_shift);if (l4526672A_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2F12B3E4
		/// @DnDParent : 4526672A
		/// @DnDArgument : "spriteind" "spr_player_unloaded_boost"
		/// @DnDSaveInfo : "spriteind" "spr_player_unloaded_boost"
		sprite_index = spr_player_unloaded_boost;
		image_index = 0;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 649E8BF0
/// @DnDArgument : "var" "loaded"
if(loaded == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7922FA0A
	/// @DnDParent : 649E8BF0
	/// @DnDArgument : "spriteind" "spr_player_loaded"
	/// @DnDSaveInfo : "spriteind" "spr_player_loaded"
	sprite_index = spr_player_loaded;
	image_index = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 19C6CB52
	/// @DnDParent : 649E8BF0
	/// @DnDArgument : "key" "vk_shift"
	var l19C6CB52_0;l19C6CB52_0 = keyboard_check(vk_shift);if (l19C6CB52_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 24A12960
		/// @DnDParent : 19C6CB52
		/// @DnDArgument : "spriteind" "spr_player_loaded_boost"
		/// @DnDSaveInfo : "spriteind" "spr_player_loaded_boost"
		sprite_index = spr_player_loaded_boost;
		image_index = 0;}}