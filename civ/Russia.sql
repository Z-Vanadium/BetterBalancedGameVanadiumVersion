-- get 1 faith for city center
INSERT INTO TraitModifiers(TraitType , ModifierId) VALUES
    ('TRAIT_CIVILIZATION_MOTHER_RUSSIA', 'BBGV_ONE_FAITH_CITY_CENTER');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
    ('BBGV_ONE_FAITH_CITY_CENTER', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'BBGV_CITY_CENTER_REQSET');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
    ('BBG_ONE_FAITH_CAPITAL', 'YieldType', 'YIELD_FAITH'),
    ('BBG_ONE_FAITH_CAPITAL', 'Amount', 2);

-- req

    