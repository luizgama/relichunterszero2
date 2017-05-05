///Buy
if instance_exists(activationClient) && (!unlock)
{
    if (point_distance(x,y,activationClient.x,activationClient.y) <= range) in_range = true;    
    
    if (wantToActivate) && (in_range)
    {
        if (global.score_total >= price)
        { 
            global.score_total -= price;
            unlock = true;
            audio_play(activationClient.audio_emitter,false,1,sfx_buy);
            
            announce = instance_create(x,y,fx_bigMessage);
            announce.textBig = loc_key("HUD_UNLOCK_ITEM");
            announce.textSmall = loc_key("HUD_UNLOCK_ITEM_GENERIC") + string(weaponName);
            
            if (instance_exists(global.dynamicAmmo1)) && (sprite_index != spr_pickup_grenade)
            {
                var p = activationClient.myPlayerId;
                if (p == 1) { global.dynamicAmmo1.timedActive = true; global.dynamicAmmo1.activeTimeCurrent = 0; }
                if (p == 2) { global.dynamicAmmo2.timedActive = true; global.dynamicAmmo2.activeTimeCurrent = 0; }
            }
        }
        else
        {
            guiInfo = instance_create(activationClient.x,activationClient.y,gui_info);
            guiInfo.myString = loc_key("INFO_NOTENOUGHBOUNTY");
            guiInfo.colorMain = K_BETU_RED;
            guiInfo.owner = activationClient;
            audio_play(activationClient.audio_emitter, false, 1, sfx_pickup_full);
        }
    }
}

if (in_range) image_index = 1;
else image_index = 0;

