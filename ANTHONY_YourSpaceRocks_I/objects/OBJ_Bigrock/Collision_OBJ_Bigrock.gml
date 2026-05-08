/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 49C21CA8
direction = (direction + 180) % 360;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 07750C4E
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "180"
direction = (random_range(0, 180));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4F0EB5C0
/// @DnDArgument : "var" "shouldrotate"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "2"
shouldrotate = floor(random_range(1, 2 + 1));

/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 0A55839F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "OBJ_Bigrock"
/// @DnDArgument : "notme" "0"
/// @DnDSaveInfo : "obj" "OBJ_Bigrock"
var l0A55839F_0 = collision_point(x + 0, y + 0, [OBJ_Bigrock], true, 0);if((l0A55839F_0)){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 365ECA56
	/// @DnDParent : 0A55839F
	/// @DnDArgument : "spriteind" "spr_rock_small"
	/// @DnDSaveInfo : "spriteind" "spr_rock_small"
	sprite_index = spr_rock_small;
	image_index = 0;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 454F44DA
	/// @DnDParent : 0A55839F
	/// @DnDArgument : "var" "Randvar"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "1900"
	Randvar = floor(random_range(0, 1900 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1B0888BE
	/// @DnDParent : 0A55839F
	/// @DnDArgument : "x" "Randvar"
	/// @DnDArgument : "y" "0"
	x = Randvar;y = 0;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 658A87AB
	/// @DnDParent : 0A55839F
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "max" "360"
	direction = (random_range(0, 360));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 77EF6C40
	/// @DnDParent : 0A55839F
	/// @DnDArgument : "var" "image_angle"
	/// @DnDArgument : "max" "360"
	image_angle = (random_range(0, 360));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68EAF18F
	/// @DnDParent : 0A55839F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "speed"
	speed += 1;}