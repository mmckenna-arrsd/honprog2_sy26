// inputs
rightkey = keyboard_check(vk_right);
leftkey = keyboard_check(vk_left);

// movement direction
movedir = rightkey-leftkey;

move_x = movedir*move_speed;

var subpixel = 0.5;

var l49C5ED22_0 = instance_place(0, 0, [noone]);if ((l49C5ED22_0 > 0)){}