///Interaction

event_inherited();

if (activationClient != noone) {
   
    if (point_distance(x,y,activationClient.x,activationClient.y) <= range) in_range = true;    
    
    if (wantToActivate) && (in_range) {
        if (hasGunMods) {
            wantToActivate = false;
                
			//Clean the Table
			if (instance_exists_fast(lastSpawnedItem)) {
				instance_destroy(lastSpawnedItem);
				lastSpawnedItem = noone;
			}
			
			//spawn next mod
			gunModIndex = 0;
			for (var modIndex = 0; modIndex < ds_list_size(global.steamUGCItemsList); modIndex++) {
				var modData = global.steamUGCItemsDataMap[? global.steamUGCItemsList[| modIndex]];
	
				//only gun mods
				if (modData[? "type"] != "gun") continue;
				
				//reached current mod, spawn gun
				if (gunModIndex == currentModIndex) {
					
					//rotate current mod
					currentModIndex++;
					if (currentModIndex >= ds_list_size(global.steamUGCItemsList)) {
						currentModIndex = 0;
					}					
				
			        lastSpawnedItem = instance_create_layer(spawner.spawnX,spawner.spawnY,"Interactive",obj_pickup_mod_gun);
					lastSpawnedItem.ugcItemId = modData[? "id"];
					with (lastSpawnedItem) {
						load_pickup_mod_gun_config(ugcItemId);
					}
					//owner_add_activated_instance_ex(pickup, activationClient);
			        //pickup.wantToActivate = true;
			        //pickup.in_range = true;
		            audio_play(activationClient.audio_emitter, false, 1, sfx_pickup_available); 

					break;
				}
				gunModIndex++;
			}
				
	    } else {
			gui_info_show_at(activationClient.id, activationClient.x, activationClient.y, "Interactive_Over", K_BETU_RED, "NO GUN MODS");
            audio_play(activationClient.audio_emitter, false, 1, sfx_pickup_full); 
        }    
    }
}

