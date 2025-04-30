-- extra +8% boost and ulk
UPDATE ModifierArguments SET Value=8 WHERE ModifierId IN ('TRAIT_CIVIC_BOOST', 'TRAIT_TECHNOLOGY_BOOST');

-- after civic service, great wall +1 prod
INSERT INTO Improvement_BonusYieldChanges VALUES
    (5000, 'IMPROVEMENT_GREAT_WALL', 'YIELD_PRODUCTION', 1, NULL, 'CIVIC_CIVIL_SERVICE');
