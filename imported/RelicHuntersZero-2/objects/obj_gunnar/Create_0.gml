///Setup
event_inherited();

image_speed = 0.2;
image_xscale = -1;
depth = -y;

price = 0;

range = 120;
in_range = false;

myPrompt = instance_create_layer(x-42,y+30,"Interactive",fx_prompt_e);
myPrompt.owner = id;

name = loc_key("GUNNAR_INFO_POPUP");
myInfo = instance_create_layer(x,y,"Interactive_Over",fx_info_pickup);
myInfo.owner = id;

myBalloon = noone;
