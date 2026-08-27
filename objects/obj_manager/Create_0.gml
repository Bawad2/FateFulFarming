width =display_get_gui_width()
height = display_get_gui_height()

color = c_black
alpha = 0

global.tick = 0
global.sec = 0
global.min = 0
global.day_ = 1
global.potato = 5


konami_sequence = [];
konami_code = [vk_up, vk_up, vk_down, vk_down, vk_left, vk_right, vk_left, vk_right, ord("B"), ord("A")];
konami_index = 0;