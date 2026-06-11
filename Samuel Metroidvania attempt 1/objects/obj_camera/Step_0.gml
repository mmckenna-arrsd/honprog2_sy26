//fullscreen toggle
if keyboard_check_pressed(vk_f8)
{
	window_set_fullscreen(!window_get_fullscreen());
}

//exit if there is no player
if !instance_exists(obj_player) exit;

//get camera size
var _camwidth = camera_get_view_width(view_camera[0]);
var _camheight = camera_get_view_height(view_camera[0]);

//get camera target coords
var _camx = obj_player.x - _camwidth/2;
var _camy = obj_player.y - _camheight/2;

//constrain cam
_camx=clamp(_camx, 0, room_width- _camwidth)
_camy=clamp(_camy, 0, room_height- _camheight)

//set cam coord variables
finalcamx+=(_camx-finalcamx)*camtrailspd;
finalcamy+=(_camy-finalcamy)*camtrailspd;

//set camera coords
camera_set_view_pos(view_camera[0], finalcamx, finalcamy)