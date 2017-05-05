///Unlock Relic Part
event_inherited();
price = global.price_yottabyte1;

if (unlock)
{
    global.relic_yottabyte1 = 1;
    
    relicSprite1 = spr_yottabyte1;
    relicSprite2 = spr_yottabyte2;
    relicSprite3 = spr_yottabyte3;
    
    relicSprite1Draw = global.relic_yottabyte1;
    relicSprite2Draw = global.relic_yottabyte2;
    relicSprite3Draw = global.relic_yottabyte3;
    
    if (relicSprite1Draw) && (relicSprite2Draw) && (relicSprite3Draw)
    {
        announce.relicCompleteSprite = spr_yottabyte_drive;
        announce.textBig = fullRelicTextBig;
        announce.textSmall = fullRelicTextSmall;
    }

    announce.relicSprite1 = relicSprite1;
    announce.relicSprite1Draw = relicSprite1Draw;
    announce.relicSprite2 = relicSprite2;
    announce.relicSprite2Draw = relicSprite2Draw;
    announce.relicSprite3 = relicSprite3;
    announce.relicSprite3Draw = relicSprite3Draw;
    
    
    
    
    instance_destroy();
}

