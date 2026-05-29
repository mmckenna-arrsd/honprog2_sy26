
/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3503A1F0
/// @DnDArgument : "var" "drop_health_kit"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "5"
drop_health_kit = floor(random_range(1, 5 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 372043B7
/// @DnDArgument : "var" "drop_health_kit"
/// @DnDArgument : "value" "3"
if(drop_health_kit == 3)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4FA28760
	/// @DnDParent : 372043B7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_health_kit"
	/// @DnDSaveInfo : "objectid" "obj_health_kit"
	instance_create_layer(x + 0, y + 0, "Instances", obj_health_kit);
}







/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3503A1F0
/// @DnDArgument : "var" "drop_health_kit"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "5"
drop_bullet_poweup = floor(random_range(1, 5 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 372043B7
/// @DnDArgument : "var" "drop_health_kit"
/// @DnDArgument : "value" "3"
if(drop_bullet_poweup == 3)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4FA28760
	/// @DnDParent : 372043B7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_health_kit"
	/// @DnDSaveInfo : "objectid" "obj_health_kit"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet_powerup);
}
