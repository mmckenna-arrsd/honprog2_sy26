/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 291D8EF6
/// @DnDComment : // Checks player exists
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l291D8EF6_0 = false;
l291D8EF6_0 = instance_exists(obj_player);
if(l291D8EF6_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F352FA6
	/// @DnDComment : // Checks the current value for players ammo and displays when less than 20% ammo
	/// @DnDParent : 291D8EF6
	/// @DnDArgument : "var" "obj_player.player_curr_ammo"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "obj_player.player_max_ammo * 0.2"
	if(obj_player.player_curr_ammo <= obj_player.player_max_ammo * 0.2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3516CEC1
		/// @DnDComment : // Tracks time to transition alpha on and off
		/// @DnDParent : 6F352FA6
		/// @DnDArgument : "expr" "delta_time * 0.000001"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "alpha_time"
		alpha_time += delta_time * 0.000001;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 531FE2F2
		/// @DnDComment : // Variable used for the rate
		/// @DnDParent : 6F352FA6
		/// @DnDArgument : "var" "_alpha_rate"
		/// @DnDArgument : "value" "0.2"
		var _alpha_rate = 0.2;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 23236DD4
		/// @DnDComment : // Checks if first transition is finished
		/// @DnDParent : 6F352FA6
		/// @DnDArgument : "expr" "alpha_target >= 0.99 && alpha_time >= _alpha_rate"
		if(alpha_target >= 0.99 && alpha_time >= _alpha_rate)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3ADBB1AB
			/// @DnDComment : // Sets values for second transition
			/// @DnDInput : 2
			/// @DnDParent : 23236DD4
			/// @DnDArgument : "var" "alpha_time"
			/// @DnDArgument : "var_1" "alpha_target"
			alpha_time = 0;
			alpha_target = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 531E51BC
		/// @DnDParent : 6F352FA6
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 69091429
			/// @DnDComment : // Checks if second transition is finished
			/// @DnDParent : 531E51BC
			/// @DnDArgument : "expr" "alpha_target <= 0.01 && alpha_time >= _alpha_rate"
			if(alpha_target <= 0.01 && alpha_time >= _alpha_rate)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1D11D68E
				/// @DnDComment : // Sets values for first transition
				/// @DnDInput : 2
				/// @DnDParent : 69091429
				/// @DnDArgument : "expr_1" "1"
				/// @DnDArgument : "var" "alpha_time"
				/// @DnDArgument : "var_1" "alpha_target"
				alpha_time = 0;
				alpha_target = 1;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3726017C
	/// @DnDParent : 291D8EF6
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C60DBF8
		/// @DnDComment : // Resets the alpha to transparent (or just below zero alpha to help for smoother fade out)
		/// @DnDInput : 2
		/// @DnDParent : 3726017C
		/// @DnDArgument : "expr_1" "-0.1"
		/// @DnDArgument : "var" "alpha_time"
		/// @DnDArgument : "var_1" "alpha_target"
		alpha_time = 0;
		alpha_target = -0.1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 188EB432
	/// @DnDComment : // Adjusts the alpha to desired target
	/// @DnDParent : 291D8EF6
	/// @DnDArgument : "expr" "lerp(image_alpha, alpha_target, 0.1)"
	/// @DnDArgument : "var" "image_alpha"
	image_alpha = lerp(image_alpha, alpha_target, 0.1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 42E734E4
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 25ED4696
	/// @DnDComment : // Destroys the object as player would be dead and values unreadable
	/// @DnDParent : 42E734E4
	instance_destroy();
}