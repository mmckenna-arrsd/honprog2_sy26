/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 31279594
/// @DnDArgument : "key" "vk_alt"
var l31279594_0;l31279594_0 = keyboard_check(vk_alt);if (l31279594_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1B559AB7
	/// @DnDParent : 31279594
	/// @DnDArgument : "spriteind" "spr_bullet_beam"
	/// @DnDSaveInfo : "spriteind" "spr_bullet_beam"
	sprite_index = spr_bullet_beam;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 77308E05
	/// @DnDParent : 31279594
	/// @DnDArgument : "xscale" "0.1"
	/// @DnDArgument : "yscale" "0.1"
	image_xscale = 0.1;image_yscale = 0.1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7C3EC1C3
/// @DnDArgument : "key" "vk_alt"
/// @DnDArgument : "not" "1"
var l7C3EC1C3_0;l7C3EC1C3_0 = keyboard_check(vk_alt);if (!l7C3EC1C3_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6E45FE07
	/// @DnDParent : 7C3EC1C3
	/// @DnDArgument : "spriteind" "spr_bullet"
	/// @DnDSaveInfo : "spriteind" "spr_bullet"
	sprite_index = spr_bullet;
	image_index = 0;}