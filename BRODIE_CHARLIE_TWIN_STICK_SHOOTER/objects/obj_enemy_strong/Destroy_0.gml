/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7AD5724D
/// @DnDComment : // Creates a new instance of a dead state of the enemy
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "_body"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_enemy_dead"
/// @DnDArgument : "layer" ""Bodies""
/// @DnDSaveInfo : "objectid" "obj_enemy_dead"
var _body = instance_create_layer(x + 0, y + 0, "Bodies", obj_enemy_dead);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 33E8EA80
/// @DnDComment : // Sets the angle of the dead enemy to match the enemy
/// @DnDApplyTo : _body
/// @DnDArgument : "value" "other.image_angle"
/// @DnDArgument : "instvar" "12"
with(_body) {
image_angle = other.image_angle;
}

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
if(drop_health_kit == 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4FA28760
	/// @DnDParent : 372043B7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_health_kit"
	/// @DnDSaveInfo : "objectid" "obj_health_kit"
	instance_create_layer(x + 0, y + 0, "Instances", obj_health_kit);}