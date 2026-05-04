/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C9C4392
/// @DnDArgument : "var" "obj_player.player_health"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(obj_player.player_health < 3){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 136E2E44
	/// @DnDParent : 4C9C4392
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_player.player_health"
	obj_player.player_health += 1;}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 29939530
/// @DnDApplyTo : {obj_health_kit}
with(obj_health_kit) instance_destroy();