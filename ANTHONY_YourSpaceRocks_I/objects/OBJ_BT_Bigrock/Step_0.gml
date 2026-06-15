/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40948809
/// @DnDArgument : "var" "Aperation"
/// @DnDArgument : "value" "1"
if(Aperation == 1){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 665BBABB
	/// @DnDParent : 40948809
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2D620B6F
else{	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 01665B58
	/// @DnDParent : 2D620B6F
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AFD1CC8
/// @DnDComment : Checks if should rotate
/// @DnDArgument : "var" "shouldrotate"
/// @DnDArgument : "value" "2"
if(shouldrotate == 2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 553644E0
	/// @DnDParent : 3AFD1CC8
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 3;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 75DA0B99
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41D7C8EA
	/// @DnDParent : 75DA0B99
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle = 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6163FE52
/// @DnDComment : If Destroyed
/// @DnDArgument : "var" "health"
/// @DnDArgument : "op" "3"
if(health <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B66AA71
	/// @DnDParent : 6163FE52
	/// @DnDArgument : "expr" "50"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "OBJ_AT_Score.Points"
	OBJ_AT_Score.Points += 50;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D180625
	/// @DnDParent : 6163FE52
	instance_destroy();

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 1297433F
	/// @DnDParent : 6163FE52
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	effect_create_above(0, x + 0, y + 0, 2, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 0ED94D01
	/// @DnDParent : 6163FE52
	/// @DnDArgument : "var" "Rockdeathrepawnpoints"
	/// @DnDArgument : "max" "9800"
	Rockdeathrepawnpoints = (random_range(0, 9800));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 67F56A16
	/// @DnDParent : 6163FE52
	/// @DnDArgument : "xpos" "Rockdeathrepawnpoints"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "Rockdeathrepawnpoints"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "OBJ_BT_Bigrock"
	/// @DnDSaveInfo : "objectid" "OBJ_BT_Bigrock"
	instance_create_layer(x + Rockdeathrepawnpoints, y + Rockdeathrepawnpoints, "Instances", OBJ_BT_Bigrock);}