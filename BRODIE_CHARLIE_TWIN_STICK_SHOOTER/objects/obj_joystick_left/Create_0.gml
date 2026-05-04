/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C042336
/// @DnDComment : // Set the joystick position on screen
/// @DnDInput : 2
/// @DnDArgument : "expr" "room_width * 0.125"
/// @DnDArgument : "expr_1" "room_height * 0.8"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = room_width * 0.125;
y = room_height * 0.8;

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 04F763D4
/// @DnDComment : // Inherit the parent event
event_inherited();