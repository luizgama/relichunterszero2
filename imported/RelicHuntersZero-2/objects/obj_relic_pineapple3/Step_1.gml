///Activation
event_inherited();

if (global.relic_pineapple3)
{
    active = true;
}

//Destroy if full Relic is unlocked already
if (global.relic_pineapple_pudding) instance_destroy();

