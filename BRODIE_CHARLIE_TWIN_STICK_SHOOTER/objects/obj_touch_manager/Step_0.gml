/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 645DB457
/// @DnDComment : // Checks for a maximum of 4 touches
/// @DnDArgument : "var" "_max_devices"
/// @DnDArgument : "value" "4"
var _max_devices = 4;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 0345353C
/// @DnDComment : // Loops for the max times
/// @DnDArgument : "init" "_i = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "_i < _max_devices"
/// @DnDArgument : "expr" "_i += 1"
for(var _i = 0; _i < _max_devices; _i += 1) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 566B71DE
	/// @DnDComment : // Sets the touch position to temporary variables from ID
	/// @DnDInput : 2
	/// @DnDParent : 0345353C
	/// @DnDArgument : "var" "_touch_x"
	/// @DnDArgument : "value" "device_mouse_x_to_gui(_i)"
	/// @DnDArgument : "var_1" "_touch_y"
	/// @DnDArgument : "value_1" "device_mouse_y_to_gui(_i)"
	var _touch_x = device_mouse_x_to_gui(_i);
	var _touch_y = device_mouse_y_to_gui(_i);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AE3C2A1
	/// @DnDComment : // Checks if a joystick is at that touched position
	/// @DnDParent : 0345353C
	/// @DnDArgument : "var" "_joystick"
	/// @DnDArgument : "value" "instance_position(_touch_x, _touch_y, obj_joystick)"
	var _joystick = instance_position(_touch_x, _touch_y, obj_joystick);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A211A9E
	/// @DnDComment : // Checks if the touch positions is actively being pressed (can be released)
	/// @DnDParent : 0345353C
	/// @DnDArgument : "var" "_held"
	/// @DnDArgument : "value" "device_mouse_check_button(_i, mb_left)"
	var _held = device_mouse_check_button(_i, mb_left);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 48780A91
	/// @DnDComment : // Checks if both the joystick exists at the position and is being held
	/// @DnDInput : 2
	/// @DnDParent : 0345353C
	/// @DnDArgument : "expr" "_joystick != noone"
	/// @DnDArgument : "expr_1" "_held"
	if(_joystick != noone && _held)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2E5282E8
		/// @DnDComment : // Sets the joystick to read input from that touch ID
		/// @DnDParent : 48780A91
		/// @DnDArgument : "function" "_joystick.input"
		/// @DnDArgument : "arg" "_i"
		_joystick.input(_i);
	}
}