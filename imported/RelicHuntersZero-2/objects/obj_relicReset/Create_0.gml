///Setup

event_inherited();

image_speed = 0;

price = 800;

range = 120;
in_range = false;

myPrompt = instance_create(x-44,y-21,fx_prompt_e);
myPrompt.owner = id;

name = loc_key("TERMINAL_RELIC_DESC");
myInfo = instance_create(x,y,fx_info_pickup);
myInfo.owner = id;

depth = -y-32;

