-- get 2 faith for city center
INSERT INTO TraitModifiers(TraitType , ModifierId) VALUES
    ('TRAIT_CIVILIZATION_MOTHER_RUSSIA', 'BBGV_CITY_CENTER_EXTRA_FAITH');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
    ('BBGV_CITY_CENTER_EXTRA_FAITH', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'BBGV_CITY_CENTER_REQSET');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
    ('BBGV_CITY_CENTER_EXTRA_FAITH', 'YieldType', 'YIELD_FAITH'),
    ('BBGV_CITY_CENTER_EXTRA_FAITH', 'Amount', 2);

-- req
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
    ('BBGV_CITY_CENTER_REQSET', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
    ('BBGV_CITY_CENTER_REQSET', 'BBG_REQUIRES_PLOT_IS_CITY_CENTER');
    