/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24D3EB5A
/// @DnDComment : // Checks if touch ID is set
/// @DnDArgument : "var" "touch_id"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "-1"
if(!(touch_id == -1))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5B46DDB8
	/// @DnDComment : // Checks if set ID is pressed
	/// @DnDParent : 24D3EB5A
	/// @DnDArgument : "expr" "device_mouse_check_button(touch_id, mb_left)"
	if(device_mouse_check_button(touch_id, mb_left))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 567B8575
		/// @DnDComment : // Get x and y positions from ID and adjust from object position
		/// @DnDInput : 2
		/// @DnDParent : 5B46DDB8
		/// @DnDArgument : "expr" "device_mouse_x_to_gui(touch_id) - x"
		/// @DnDArgument : "expr_1" "device_mouse_y_to_gui(touch_id) - y"
		/// @DnDArgument : "var" "joy_x"
		/// @DnDArgument : "var_1" "joy_y"
		joy_x = device_mouse_x_to_gui(touch_id) - x;
		joy_y = device_mouse_y_to_gui(touch_id) - y;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1E98FE5D
		/// @DnDComment : // Create temp variables for direction and distance of pressed point
		/// @DnDInput : 2
		/// @DnDParent : 5B46DDB8
		/// @DnDArgument : "var" "_direction"
		/// @DnDArgument : "value" "point_direction(0, 0, joy_x, joy_y)"
		/// @DnDArgument : "var_1" "_distance"
		/// @DnDArgument : "value_1" "point_distance(0, 0, joy_x, joy_y)"
		var _direction = point_direction(0, 0, joy_x, joy_y);
		var _distance = point_distance(0, 0, joy_x, joy_y);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62B17997
		/// @DnDComment : // Checks if distance is greater than radius
		/// @DnDParent : 5B46DDB8
		/// @DnDArgument : "var" "_distance"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "radius"
		if(_distance > radius)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70CA930F
			/// @DnDComment : // Clamps the points based on the direction of joystick
			/// @DnDInput : 2
			/// @DnDParent : 62B17997
			/// @DnDArgument : "expr" "lengthdir_x(radius, _direction)"
			/// @DnDArgument : "expr_1" "lengthdir_y(radius, _direction)"
			/// @DnDArgument : "var" "joy_x"
			/// @DnDArgument : "var_1" "joy_y"
			joy_x = lengthdir_x(radius, _direction);
			joy_y = lengthdir_y(radius, _direction);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 36A37542
		/// @DnDComment : // Sets the values of the joystick to a clamped values between -1 and 1
		/// @DnDInput : 2
		/// @DnDParent : 5B46DDB8
		/// @DnDArgument : "expr" "clamp(joy_x / radius, -1, 1);"
		/// @DnDArgument : "expr_1" "clamp(joy_y / radius, -1, 1);"
		/// @DnDArgument : "var" "joy_v"
		/// @DnDArgument : "var_1" "joy_h"
		joy_v = clamp(joy_x / radius, -1, 1);;
		joy_h = clamp(joy_y / radius, -1, 1);;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7FFA19BE
	/// @DnDParent : 24D3EB5A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A3C3A3B
		/// @DnDComment : // Resets all the joystick variables since not being interacted with
		/// @DnDInput : 5
		/// @DnDParent : 7FFA19BE
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "touch_id"
		/// @DnDArgument : "var_1" "joy_x"
		/// @DnDArgument : "var_2" "joy_y"
		/// @DnDArgument : "var_3" "joy_h"
		/// @DnDArgument : "var_4" "joy_v"
		touch_id = -1;
		joy_x = 0;
		joy_y = 0;
		joy_h = 0;
		joy_v = 0;
	}
}