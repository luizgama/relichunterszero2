///Pick Up

if instance_exists(activationClient)
{
    if (point_distance(x,y,activationClient.x,activationClient.y) <= range) in_range = true;

    if (wantToActivate) && (in_range)
    {
        if (activationClient.hp < activationClient.hp_max)
        {
            activationClient.hp += hp;
            
            audio_play(activationClient.audio_emitter,false,1,sfx_pickup_health);
            
            guiInfo = instance_create(activationClient.x,activationClient.y,gui_info);
            guiInfo.colorMain = c_white;
            guiInfo.myString = loc_key("INFO_HEALTHPLUS");
            guiInfo.owner = activationClient;
            instance_destroy();
        }
        else
        {
            guiInfo = instance_create(activationClient.x,activationClient.y,gui_info);
            guiInfo.colorMain = c_black;
            guiInfo.myString = loc_key("INFO_HEALTHFULL");
            guiInfo.owner = activationClient;
            audio_play(activationClient.audio_emitter, false, 1, sfx_pickup_full);
        }
    }
}

//Betu Goze
if (!on_top_of_object)
{
    myObject = collision_point(x,y,obj_wall,false,true);
    if (instance_exists(myObject)) on_top_of_object = true;
}

if (on_top_of_object)
{
    if (!instance_exists(myObject))
    {
        y+=32;
        on_top_of_object = false;
    }
}

///Animation
if (in_range) image_index = 1;
else image_index = 0;


