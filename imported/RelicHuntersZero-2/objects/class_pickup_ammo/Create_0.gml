event_inherited();

range = 130;
in_range = false;
sprite_index = spr_pickup_light;
ammo = 50;

myPrompt = instance_create(x+10,y-25,fx_prompt_e);
myPrompt.owner = id;

name = "I AM ERROR";
myInfo = instance_create(x,y,fx_info_pickup);
myInfo.owner = id;

depth=-y-2;

reflection_object_setup(25,-1,image_index);

on_top_of_object = false;

image_speed = 0;
image_index = 0;

kill = false;

