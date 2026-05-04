/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 18716BAE
/// @DnDComment : // Checks if the image is at the target scale
/// @DnDArgument : "expr" "image_xscale != target_scale || image_yscale != target_scale"
if(image_xscale != target_scale || image_yscale != target_scale)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6B2D405B
	/// @DnDComment : // Checks if scale changes at rate or snaps to size
	/// @DnDParent : 18716BAE
	/// @DnDArgument : "expr" "can_scale_at_rate"
	if(can_scale_at_rate)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 1BD558A2
		/// @DnDComment : // Lerps the scale towards the target scale
		/// @DnDParent : 6B2D405B
		/// @DnDArgument : "value" "lerp(image_xscale,target_scale,scale_rate)"
		/// @DnDArgument : "instvar" "15"
		image_xscale = lerp(image_xscale,target_scale,scale_rate);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 7CFA98D0
		/// @DnDComment : // Lerps the scale towards the target scale
		/// @DnDParent : 6B2D405B
		/// @DnDArgument : "value" "lerp(image_yscale,target_scale,scale_rate)"
		/// @DnDArgument : "instvar" "16"
		image_yscale = lerp(image_yscale,target_scale,scale_rate);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 138AAAD1
	/// @DnDParent : 18716BAE
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 0DB3D12F
		/// @DnDComment : // Hard sets the scale to new target scale
		/// @DnDInput : 2
		/// @DnDParent : 138AAAD1
		/// @DnDArgument : "value" "target_scale"
		/// @DnDArgument : "value_1" "target_scale"
		/// @DnDArgument : "instvar" "15"
		/// @DnDArgument : "instvar_1" "16"
		image_xscale = target_scale;
		image_yscale = target_scale;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40CCD950
/// @DnDComment : // Checks if pressed
/// @DnDArgument : "var" "is_pressed"
/// @DnDArgument : "value" "true"
if(is_pressed == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1038F5D4
	/// @DnDComment : // Checks if image scale has reached target scale
	/// @DnDParent : 40CCD950
	/// @DnDArgument : "expr" "image_xscale == target_scale && image_yscale == target_scale"
	if(image_xscale == target_scale && image_yscale == target_scale)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5B1D3388
		/// @DnDComment : // Checks if scale is 100%
		/// @DnDParent : 1038F5D4
		/// @DnDArgument : "expr" "image_xscale == 1 && image_yscale == 1"
		if(image_xscale == 1 && image_yscale == 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4266D19B
			/// @DnDComment : // Resets the buttons pressed state$(13_10)// Resets the buttons scale rate
			/// @DnDInput : 2
			/// @DnDParent : 5B1D3388
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "expr_1" "0.1"
			/// @DnDArgument : "var" "is_pressed"
			/// @DnDArgument : "var_1" "scale_rate"
			is_pressed = false;
			scale_rate = 0.1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7F731CA8
		/// @DnDParent : 1038F5D4
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2030C1FE
			/// @DnDComment : // Sets target scale to 100%
			/// @DnDParent : 7F731CA8
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "target_scale"
			target_scale = 1;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 20FE37CE
/// @DnDComment : // Checks if player exists before reading ammo count
/// @DnDArgument : "expr" "instance_exists(obj_player)"
if(instance_exists(obj_player))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D93C8AF
	/// @DnDComment : // Checks the current value for players ammo
	/// @DnDParent : 20FE37CE
	/// @DnDArgument : "var" "obj_player.player_curr_ammo"
	if(obj_player.player_curr_ammo == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 115B59B8
		/// @DnDComment : // Tracks time to blend colour back and forth
		/// @DnDParent : 6D93C8AF
		/// @DnDArgument : "expr" "delta_time * 0.000001"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "blend_time"
		blend_time += delta_time * 0.000001;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2CCB9033
		/// @DnDComment : // Variables used for the colour rate and values
		/// @DnDInput : 3
		/// @DnDParent : 6D93C8AF
		/// @DnDArgument : "var" "_blend_rate"
		/// @DnDArgument : "value" "0.25"
		/// @DnDArgument : "var_1" "_blend_colour_1"
		/// @DnDArgument : "value_1" "make_color_rgb(255, 20, 20)"
		/// @DnDArgument : "var_2" "_blend_colour_2"
		/// @DnDArgument : "value_2" "make_color_rgb(255, 200, 20)"
		var _blend_rate = 0.25;
		var _blend_colour_1 = make_color_rgb(255, 20, 20);
		var _blend_colour_2 = make_color_rgb(255, 200, 20);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03E14EAE
		/// @DnDComment : // Sets to first colour if still white
		/// @DnDParent : 6D93C8AF
		/// @DnDArgument : "var" "blend_target"
		/// @DnDArgument : "value" "c_white"
		if(blend_target == c_white)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 76CD8138
			/// @DnDParent : 03E14EAE
			/// @DnDArgument : "expr" "_blend_colour_1"
			/// @DnDArgument : "var" "blend_target"
			blend_target = _blend_colour_1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 277CAAF2
		/// @DnDComment : // Checks if first blend is finished
		/// @DnDInput : 2
		/// @DnDParent : 6D93C8AF
		/// @DnDArgument : "expr" "blend_target == _blend_colour_1"
		/// @DnDArgument : "expr_1" "blend_time >= _blend_rate"
		if(blend_target == _blend_colour_1 && blend_time >= _blend_rate)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2FD6624A
			/// @DnDComment : // Sets values for second blend
			/// @DnDInput : 2
			/// @DnDParent : 277CAAF2
			/// @DnDArgument : "expr_1" "_blend_colour_2"
			/// @DnDArgument : "var" "blend_time"
			/// @DnDArgument : "var_1" "blend_target"
			blend_time = 0;
			blend_target = _blend_colour_2;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4702E179
		/// @DnDParent : 6D93C8AF
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 33DE24DB
			/// @DnDComment : // Checks if second blend is finished
			/// @DnDInput : 2
			/// @DnDParent : 4702E179
			/// @DnDArgument : "expr" "blend_target == _blend_colour_2"
			/// @DnDArgument : "expr_1" "blend_time >= _blend_rate"
			if(blend_target == _blend_colour_2 && blend_time >= _blend_rate)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 01F5C535
				/// @DnDComment : // Sets values for first blend
				/// @DnDInput : 2
				/// @DnDParent : 33DE24DB
				/// @DnDArgument : "expr_1" "_blend_colour_1"
				/// @DnDArgument : "var" "blend_time"
				/// @DnDArgument : "var_1" "blend_target"
				blend_time = 0;
				blend_target = _blend_colour_1;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 18EBE45A
	/// @DnDParent : 20FE37CE
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C467C20
		/// @DnDComment : // Resets blend to white
		/// @DnDInput : 2
		/// @DnDParent : 18EBE45A
		/// @DnDArgument : "expr_1" "c_white"
		/// @DnDArgument : "var" "blend_time"
		/// @DnDArgument : "var_1" "blend_target"
		blend_time = 0;
		blend_target = c_white;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4058AC11
	/// @DnDComment : // Adjusts the actual image blend to desired target
	/// @DnDParent : 20FE37CE
	/// @DnDArgument : "expr" "merge_color(image_blend, blend_target, 0.05)"
	/// @DnDArgument : "var" "image_blend"
	image_blend = merge_color(image_blend, blend_target, 0.05);
}