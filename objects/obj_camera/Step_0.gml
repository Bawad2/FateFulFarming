// Camera / Viewports setting

var cam = view_camera[0];

var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

var cam_x = obj_player.x - cam_w / 2;
var cam_y = obj_player.y - cam_h / 2;

var max_x = max(0, room_width - cam_w);
var max_y = max(0, room_height - cam_h);

cam_x = clamp(cam_x, 0, max_x);
cam_y = clamp(cam_y, 0, max_y);

camera_set_view_pos(cam, cam_x, cam_y);