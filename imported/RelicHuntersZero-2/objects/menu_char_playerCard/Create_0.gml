///Main Config + Create Buttons

slotInput = -1;
slotCharacter = -1;
myPlayerId = -1;

myStatCard = instance_create_layer(x+90,y+40,self.layer, menu_char_playerStat);
mySpecialOkButton = instance_create_layer(x-36,y+264, self.layer, menu_char_buttonOk);
mySpecialCancelButton = instance_create_layer(x+122,y+300, self.layer, menu_char_buttonCancel);

mySpecialCancelButton.owner  = id;
mySpecialOkButton.owner  = id;
myStatCard.owner = id;

cardName = "P1";
cardSprite = spr_card_jimmy;

inputSprite = spr_char_inputKey;

