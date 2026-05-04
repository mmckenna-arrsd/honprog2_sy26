/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 593C992F
/// @DnDComment : // Variables for the joysicks position
/// @DnDInput : 2
/// @DnDArgument : "var" "joy_x"
/// @DnDArgument : "var_1" "joy_y"
joy_x = 0;
joy_y = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1B4C089C
/// @DnDComment : // Variables for the joysticks values
/// @DnDInput : 2
/// @DnDArgument : "var" "joy_h"
/// @DnDArgument : "var_1" "joy_v"
joy_h = 0;
joy_v = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 663851AC
/// @DnDComment : // Touch ID passed through
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "var" "touch_id"
touch_id = -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7A96C18B
/// @DnDComment : // Radius of the joystick base for clamping the values to
/// @DnDArgument : "expr" "sprite_width / 2"
/// @DnDArgument : "var" "radius"
radius = sprite_width / 2;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 09B5095D
/// @DnDComment : // Function called to add the joystick touch ID
/// @DnDArgument : "funcName" "input"
/// @DnDArgument : "arg" "_touch_id"
function input(_touch_id) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2AF25BF1
	/// @DnDComment : // Sets the touch ID
	/// @DnDParent : 09B5095D
	/// @DnDArgument : "expr" "_touch_id"
	/// @DnDArgument : "var" "touch_id"
	touch_id = _touch_id;
}