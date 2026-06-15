/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 21564DD1
/// @DnDArgument : "angle" "random(x)"
/// @DnDArgument : "angle_relative" "1"
image_angle += random(x);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 337B0ACC
/// @DnDApplyTo : {OBJ_BT_Player}
/// @DnDArgument : "direction" "Portal.image_angle"
with(OBJ_BT_Player) direction = Portal.image_angle;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5D68800D
/// @DnDApplyTo : {OBJ_BT_Player}
/// @DnDArgument : "angle" "Portal.image_angle"
with(OBJ_BT_Player) image_angle = Portal.image_angle;