/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 47545541
instance_destroy();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3F158D41
/// @DnDArgument : "var" "offmaprockrespawn"
/// @DnDArgument : "max" "9800"
offmaprockrespawn = (random_range(0, 9800));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4AEE6593
/// @DnDArgument : "xpos" "-4"
/// @DnDArgument : "ypos" "offmaprockrespawn"
/// @DnDArgument : "objectid" "OBJ_BT_Bigrock"
/// @DnDSaveInfo : "objectid" "OBJ_BT_Bigrock"
instance_create_layer(-4, offmaprockrespawn, "Instances", OBJ_BT_Bigrock);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 14FF773E
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_rock_small"
/// @DnDSaveInfo : "spriteind" "spr_rock_small"
sprite_index = spr_rock_small;
image_index += 0;