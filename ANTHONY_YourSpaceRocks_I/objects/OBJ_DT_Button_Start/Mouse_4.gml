/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2D98CE85
event_inherited();

/// @DnDAction : YoYo Games.Game.Restart_Game
/// @DnDVersion : 1
/// @DnDHash : 2AD7F622
game_restart();

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 096CA647
/// @DnDArgument : "room" "rm_game"
/// @DnDSaveInfo : "room" "rm_game"
room_goto(rm_game);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0498989F
/// @DnDDisabled : 1
/// @DnDApplyTo : OBJ_Score


/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1608F9A6
/// @DnDArgument : "xpos" "10"
/// @DnDArgument : "ypos" "10"
/// @DnDArgument : "objectid" "OBJ_AT_Score"
/// @DnDArgument : "layer" "rm_game"
/// @DnDSaveInfo : "objectid" "OBJ_AT_Score"
instance_create_layer(10, 10, rm_game, OBJ_AT_Score);