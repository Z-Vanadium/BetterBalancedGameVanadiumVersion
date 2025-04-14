-- relic addition to zzzx

UPDATE Modifiers Set OwnerRequirementSetId='BBG_UTILS_PLAYER_HAS_CIVIC_POLITICAL_PHILOSOPHY_REQSET' WHERE ModifierId = 'TRAIT_LITHUANIANUNION_FAITH_RELIC';
UPDATE Modifiers Set OwnerRequirementSetId='BBG_UTILS_PLAYER_HAS_CIVIC_POLITICAL_PHILOSOPHY_REQSET' WHERE ModifierId = 'TRAIT_LITHUANIANUNION_CULTURE_RELIC';
UPDATE Modifiers Set OwnerRequirementSetId='BBG_UTILS_PLAYER_HAS_CIVIC_POLITICAL_PHILOSOPHY_REQSET' WHERE ModifierId = 'TRAIT_LITHUANIANUNION_GOLD_RELIC';

-- winged hussar combat to 59
UPDATE Units SET Combat=59 WHERE UnitType='UNIT_POLISH_HUSSAR';

-- get +5 when tech ballistics
INSERT INTO Tags (Tag, Vocabulary) VALUES
    ('CLASS_WINGED_HUSSAR', 'ABILITY_CLASS');
INSERT INTO Types (Type, Kind) VALUES
    ('BBGV_ABILITY_WINGED_HUSSAR_COMBAT_BALLISTICS', 'KIND_ABILITY');
INSERT INTO TypeTags (Type, Tag) VALUES
    ('UNIT_POLISH_HUSSAR', 'CLASS_WINGED_HUSSAR'),
    ('BBGV_ABILITY_WINGED_HUSSAR_COMBAT_BALLISTICS', 'CLASS_WINGED_HUSSAR');
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description, Inactive) VALUES
    ('BBGV_ABILITY_WINGED_HUSSAR_COMBAT_BALLISTICS', 'LOC_BBGV_ABILITY_WINGED_HUSSAR_COMBAT_BALLISTICS_NAME', 'LOC_BBGV_ABILITY_WINGED_HUSSAR_COMBAT_BALLISTICS_DESC', 1);
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES
    ('BBGV_ABILITY_WINGED_HUSSAR_COMBAT_BALLISTICS', 'BBGV_WINGED_HUSSAR_COMBAT_BALLISTICS_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
    ('BBGV_WINGED_HUSSAR_COMBAT_BALLISTICS_GIVER', 'MODIFIER_PLAYER_UNITS_GRANT_ABILITY', 'BBGV_UTILS_PLAYER_HAS_TECH_BALLISTICS'),
    ('BBGV_WINGED_HUSSAR_COMBAT_BALLISTICS_MODIFIER', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
    ('BBGV_WINGED_HUSSAR_COMBAT_BALLISTICS_GIVER', 'AbilityType', 'BBGV_ABILITY_WINGED_HUSSAR_COMBAT_BALLISTICS'),
    ('BBGV_WINGED_HUSSAR_COMBAT_BALLISTICS_MODIFIER', 'Amount', 5);
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
    ('TRAIT_CIVILIZATION_AMAZON', 'BBGV_WINGED_HUSSAR_COMBAT_BALLISTICS_GIVER');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES
    ('BBGV_WINGED_HUSSAR_COMBAT_BALLISTICS_MODIFIER', 'Preview', 'LOC_BBGV_ABILITY_WINGED_HUSSAR_COMBAT_BALLISTICS_DESC');

-- requirement
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
    ('BBGV_UTILS_PLAYER_HAS_TECH_BALLISTICS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
    ('BBGV_UTILS_PLAYER_HAS_TECH_BALLISTICS', 'BBGV_UTILS_PLAYER_HAS_TECH_BALLISTICS_REQUIREMEMT');
INSERT INTO Requirements (RequirementId, RequirementType, ProgressWeight) VALUES
    ('BBGV_UTILS_PLAYER_HAS_TECH_BALLISTICS_REQUIREMEMT', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY', 1);
INSERT INTO RequirementArguments (RequirementId, Name, Type, Value) VALUES
    ('BBGV_UTILS_PLAYER_HAS_TECH_BALLISTICS_REQUIREMEMT', 'TechnologyType', 'ARGTYPE_IDENTITY', 'TECH_BALLISTICS');