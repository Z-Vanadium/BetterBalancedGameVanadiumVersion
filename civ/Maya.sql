-- observatory culture bomb
INSERT INTO Modifiers(ModifierId, ModifierType) VALUES ('BBGV_OBSERVATORY_CULTURE_BOMB', 'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES ('BBGV_OBSERVATORY_CULTURE_BOMB', 'DistrictType', 'DISTRICT_OBSERVATORY');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES ('BBGV_OBSERVATORY_CULTURE_BOMB', 'CaptureOwnedTerritory', 0);