event_inherited();
price = global.price_shield1;
unlock = false;
active = true;

range = 80;
in_range = false;

myPrompt = instance_create(x-30,y-21,fx_prompt_e);
myPrompt.owner = id;

name = loc_key("GENERAL_SHOP_OVERSHIELD");
myInfo = instance_create(x,y,fx_info_pickup);
myInfo.owner = id;


image_speed = 0;

depth = -y-25;

weaponName = "I AM ERROR";

shopType = "shield";

