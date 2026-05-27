/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 7A228857
/// @DnDArgument : "key" "ord("1")"
var l7A228857_0;l7A228857_0 = keyboard_check_pressed(ord("1"));if (l7A228857_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3DEE5B4B
	/// @DnDApplyTo : {Warp}
	/// @DnDParent : 7A228857
	with(Warp) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7ED90B3E
	/// @DnDParent : 7A228857
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Warp"
	/// @DnDSaveInfo : "objectid" "Warp"
	instance_create_layer(x + 0, y + 0, "Instances", Warp);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4631AD2C
/// @DnDComment : Brake System
/// @DnDArgument : "key" "vk_down"
var l4631AD2C_0;l4631AD2C_0 = keyboard_check(vk_down);if (l4631AD2C_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B5989C2
	/// @DnDParent : 4631AD2C
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "4"
	if(speed >= 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 725E4BDE
		/// @DnDParent : 0B5989C2
		/// @DnDArgument : "expr" "-0.1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "speed"
		speed += -0.1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78740597
		/// @DnDParent : 0B5989C2
		/// @DnDArgument : "var" "speed"
		/// @DnDArgument : "op" "1"
		if(speed < 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6706424F
			/// @DnDComment : End
			/// @DnDParent : 78740597
			/// @DnDArgument : "var" "speed"
			speed = 0;}}}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 7CF5020E
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 5523AFE1
/// @DnDComment : Arrow Key System
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
	/// @DnDComment : End
	/// @DnDParent : 4F9A894B
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "2"
	motion_add(image_angle, 2);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 142699FD
/// @DnDComment : Beam System
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
		var l2886D256_0;l2886D256_0 = keyboard_check(vk_alt);if (l2886D256_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 5DFE6833
			/// @DnDParent : 2886D256
			/// @DnDArgument : "key" "vk_control"
			var l5DFE6833_0;l5DFE6833_0 = keyboard_check(vk_control);if (l5DFE6833_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 35B67F51
				/// @DnDParent : 5DFE6833
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "OBJ_CT_Mine"
				/// @DnDSaveInfo : "objectid" "OBJ_CT_Mine"
				instance_create_layer(x + 0, y + 0, "Instances", OBJ_CT_Mine);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6A442FE8
				/// @DnDParent : 5DFE6833
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spentammo"
				spentammo += -1;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 5E2D0400
			/// @DnDParent : 2886D256
			else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 22EAA81A
				/// @DnDParent : 5E2D0400
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "OBJ_CT_Beam"
				/// @DnDSaveInfo : "objectid" "OBJ_CT_Beam"
				instance_create_layer(x + 0, y + 0, "Instances", OBJ_CT_Beam);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 67971F53
				/// @DnDComment : End
				/// @DnDParent : 5E2D0400
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spentammo"
				spentammo += -1;}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32C023A3
/// @DnDComment : Bullet System
/// @DnDArgument : "var" "loaded"
if(loaded == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EA8E2BB
	/// @DnDParent : 32C023A3
	/// @DnDArgument : "var" "chamber"
	/// @DnDArgument : "value" "1"
	if(chamber == 1){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 1B01D126
		/// @DnDParent : 5EA8E2BB
		/// @DnDArgument : "key" "ord("E")"
		var l1B01D126_0;l1B01D126_0 = keyboard_check_pressed(ord("E"));if (l1B01D126_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 54402BEF
			/// @DnDParent : 1B01D126
			/// @DnDArgument : "key" "vk_control"
			var l54402BEF_0;l54402BEF_0 = keyboard_check(vk_control);if (l54402BEF_0){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 45349452
				/// @DnDParent : 54402BEF
				/// @DnDArgument : "var" "spentammo"
				/// @DnDArgument : "value" "25"
				if(spentammo == 25){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 59BE45A9
					/// @DnDParent : 45349452
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "OBJ_CT_Missile"
					/// @DnDSaveInfo : "objectid" "OBJ_CT_Missile"
					instance_create_layer(x + 0, y + 0, "Instances", OBJ_CT_Missile);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 646B2F62
					/// @DnDParent : 45349452
					/// @DnDArgument : "expr" "-25"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "spentammo"
					spentammo += -25;}}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1015C473
			/// @DnDParent : 1B01D126
			else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 70D30EC7
				/// @DnDParent : 1015C473
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "OBJ_CT_Bullet"
				/// @DnDSaveInfo : "objectid" "OBJ_CT_Bullet"
				instance_create_layer(x + 0, y + 0, "Instances", OBJ_CT_Bullet);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1625EECF
				/// @DnDParent : 1015C473
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "spentammo"
				spentammo += -1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3EB48D5E
				/// @DnDParent : 1015C473
				/// @DnDArgument : "var" "chamber"
				chamber = 0;
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 55E48DE1
				/// @DnDComment : End
				/// @DnDParent : 1015C473
				/// @DnDArgument : "steps" "19"
				/// @DnDArgument : "alarm" "11"
				alarm_set(11, 19);}}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FB2451D
/// @DnDComment : Checks if no ammo
/// @DnDArgument : "var" "spentammo"
if(spentammo == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24F7C3E4
	/// @DnDComment : End
	/// @DnDParent : 7FB2451D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "loaded"
	loaded = 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5334BFFE
/// @DnDComment : Checks load status for sprite
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
		/// @DnDComment : End
		/// @DnDParent : 19C6CB52
		/// @DnDArgument : "spriteind" "spr_player_loaded_boost"
		/// @DnDSaveInfo : "spriteind" "spr_player_loaded_boost"
		sprite_index = spr_player_loaded_boost;
		image_index = 0;}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 4D17F4B1
/// @DnDComment : Reload System
/// @DnDArgument : "key" "ord("Q")"
var l4D17F4B1_0;l4D17F4B1_0 = keyboard_check_pressed(ord("Q"));if (l4D17F4B1_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D87EBC6
	/// @DnDParent : 4D17F4B1
	/// @DnDArgument : "var" "spentammo"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "25"
	if(!(spentammo == 25)){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61FDA627
		/// @DnDParent : 7D87EBC6
		/// @DnDArgument : "var" "chamber"
		/// @DnDArgument : "not" "1"
		if(!(chamber == 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 28B514A4
			/// @DnDParent : 61FDA627
			/// @DnDArgument : "expr" "25"
			/// @DnDArgument : "var" "spentammo"
			spentammo = 25;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2B20CBD4
			/// @DnDParent : 61FDA627
			/// @DnDArgument : "var" "loaded"
			loaded = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0FA80209
			/// @DnDParent : 61FDA627
			/// @DnDArgument : "var" "chamber"
			chamber = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 0CEE1BDF
			/// @DnDComment : End
			/// @DnDParent : 61FDA627
			/// @DnDArgument : "steps" "119"
			/// @DnDArgument : "alarm" "11"
			alarm_set(11, 119);}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18A0BCAF
/// @DnDComment : Auto Reload
/// @DnDArgument : "var" "spentammo"
if(spentammo == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 666E3917
	/// @DnDParent : 18A0BCAF
	/// @DnDArgument : "var" "spentammo"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "25"
	if(!(spentammo == 25)){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6680DA8B
		/// @DnDParent : 666E3917
		/// @DnDArgument : "var" "chamber"
		/// @DnDArgument : "not" "1"
		if(!(chamber == 0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 414341E3
			/// @DnDParent : 6680DA8B
			/// @DnDArgument : "expr" "25"
			/// @DnDArgument : "var" "spentammo"
			spentammo = 25;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5C76E11E
			/// @DnDParent : 6680DA8B
			/// @DnDArgument : "var" "loaded"
			loaded = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 234EC83A
			/// @DnDParent : 6680DA8B
			/// @DnDArgument : "var" "chamber"
			chamber = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 5B4352EB
			/// @DnDComment : End
			/// @DnDParent : 6680DA8B
			/// @DnDArgument : "steps" "119"
			/// @DnDArgument : "alarm" "11"
			alarm_set(11, 119);}}}