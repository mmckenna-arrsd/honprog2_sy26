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
/// @DnDArgument : "direction" "OBJ_Portal.image_angle"
with(OBJ_BT_Player) direction = OBJ_Portal.image_angle;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5D68800D
/// @DnDApplyTo : {OBJ_BT_Player}
/// @DnDArgument : "angle" "OBJ_Portal.image_angle"
with(OBJ_BT_Player) image_angle = OBJ_Portal.image_angle;

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 2CA53A5B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "2"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FFFF00B6"
effect_create_above(2, x + 0, y + 0, 0, $FFFF00B6 & $ffffff);