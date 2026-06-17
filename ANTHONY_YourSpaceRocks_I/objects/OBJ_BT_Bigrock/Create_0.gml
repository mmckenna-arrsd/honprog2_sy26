/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40567899
/// @DnDArgument : "var" "Reversed"
Reversed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 548D6166
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "speed"
speed = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B9DFC40
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "health"
health = 50;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7962391F
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5F83E567
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "max" "360"
image_angle = (random_range(0, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 30902439
/// @DnDArgument : "var" "shouldrotate"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "3"
shouldrotate = floor(random_range(1, 3 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 185090EB
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "3"
/// @DnDArgument : "max" "27"
speed = floor(random_range(3, 27 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F2822BA
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "Aperation"
Aperation = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3D2E45BC
/// @DnDArgument : "steps" "62"
/// @DnDArgument : "alarm" "7"
alarm_set(7, 62);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 29CFAD63
/// @DnDArgument : "var" "scalemodifierx"
/// @DnDArgument : "min" "-2.7"
/// @DnDArgument : "max" "2.7"
scalemodifierx = (random_range(-2.7, 2.7));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6C847CD2
/// @DnDArgument : "var" "scalemodifiery"
/// @DnDArgument : "min" "-2.7"
/// @DnDArgument : "max" "2.7"
scalemodifiery = (random_range(-2.7, 2.7));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 1C0DE189
/// @DnDArgument : "xscale" "scalemodifierx"
/// @DnDArgument : "yscale" "scalemodifiery"
image_xscale = scalemodifierx;image_yscale = scalemodifiery;