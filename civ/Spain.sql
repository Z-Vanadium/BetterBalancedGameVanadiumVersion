-- building harbor +50% production
INSERT INTO Modifiers(ModifierId, ModifierType) VALUES ('BBGV_SPAIN_HARBOR_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES ('BBGV_SPAIN_HARBOR_PRODUCTION', 'DistrictType', 'DISTRICT_HARBOR');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES ('BBGV_SPAIN_HARBOR_PRODUCTION', 'Amount', 50);

-- building harbor buildings +30% production
INSERT INTO Modifiers(ModifierId, ModifierType) VALUES ('BBGV_SPAIN_HARBOR_BUIDINGS_PRODUCTION', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES ('BBGV_SPAIN_HARBOR_BUIDINGS_PRODUCTION', 'DistrictType', 'DISTRICT_HARBOR');
INSERT INTO ModifierArguments(ModifierId, Name, Value) VALUES ('BBGV_SPAIN_HARBOR_BUIDINGS_PRODUCTION', 'Amount', 30);

