/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BFB82D0
/// @DnDArgument : "var" "Points"
/// @DnDArgument : "value" "50"
if(Points == 50){	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 4F63A385
	/// @DnDComment : Round 1
	/// @DnDParent : 7BFB82D0
	/// @DnDArgument : "var" "Points"
	/// @DnDArgument : "value" "50"
	while ((Points == 50)) {
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 2ABD8155
		/// @DnDParent : 4F63A385
		/// @DnDArgument : "var" "RNDRMPNT"
		/// @DnDArgument : "max" "1900"
		RNDRMPNT = (random_range(0, 1900));
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2CF9FD12
		/// @DnDParent : 4F63A385
		/// @DnDArgument : "xpos" "-4"
		/// @DnDArgument : "ypos" "RNDRMPNT"
		/// @DnDArgument : "objectid" "OBJ_Bigrock"
		/// @DnDSaveInfo : "objectid" "OBJ_Bigrock"
		instance_create_layer(-4, RNDRMPNT, "Instances", OBJ_BT_Bigrock);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 252F1C70
		/// @DnDParent : 4F63A385
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Points"
		Points += 1;
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60941012
/// @DnDArgument : "var" "Points"
/// @DnDArgument : "value" "500"
if(Points == 500){	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 3B7FFDE3
	/// @DnDComment : Round 2
	/// @DnDParent : 60941012
	/// @DnDArgument : "var" "Points"
	/// @DnDArgument : "value" "500"
	while ((Points == 500)) {
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 27AC0E96
		/// @DnDParent : 3B7FFDE3
		/// @DnDArgument : "var" "RNDRMPNT"
		/// @DnDArgument : "max" "1900"
		RNDRMPNT = (random_range(0, 1900));
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 72E51131
		/// @DnDParent : 3B7FFDE3
		/// @DnDArgument : "xpos" "-4"
		/// @DnDArgument : "ypos" "RNDRMPNT"
		/// @DnDArgument : "objectid" "OBJ_Bigrock"
		/// @DnDSaveInfo : "objectid" "OBJ_Bigrock"
		instance_create_layer(-4, RNDRMPNT, "Instances", OBJ_BT_Bigrock);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16651055
		/// @DnDParent : 3B7FFDE3
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Points"
		Points += 1;
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DBC1E90
/// @DnDArgument : "var" "Points"
/// @DnDArgument : "value" "1000"
if(Points == 1000){	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 1F2ABF9F
	/// @DnDComment : Round 3
	/// @DnDParent : 0DBC1E90
	/// @DnDArgument : "var" "Points"
	/// @DnDArgument : "value" "1000"
	while ((Points == 1000)) {
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 7218EBE4
		/// @DnDParent : 1F2ABF9F
		/// @DnDArgument : "var" "RNDRMPNT"
		/// @DnDArgument : "max" "1900"
		RNDRMPNT = (random_range(0, 1900));
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7F35B3BD
		/// @DnDParent : 1F2ABF9F
		/// @DnDArgument : "xpos" "-4"
		/// @DnDArgument : "ypos" "RNDRMPNT"
		/// @DnDArgument : "objectid" "OBJ_Bigrock"
		/// @DnDSaveInfo : "objectid" "OBJ_Bigrock"
		instance_create_layer(-4, RNDRMPNT, "Instances", OBJ_BT_Bigrock);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E35EA3A
		/// @DnDParent : 1F2ABF9F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Points"
		Points += 1;
	}}