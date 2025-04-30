-- combat bonus to +3
-- UPDATE ModifierArguments SET Value = 3 WHERE ModifierId = 'BBG_SULTAN_COMBAT_ADJACENT_APOSTLE_MODIFIER' AND Name = 'Amount';

-- remove discount of campus and emcampmemt
UPDATE ModifierArguments SET Value = 0 WHERE ModifierId LIKE 'BBG_SULTAN_CHEAPER_PURCHASE%' AND Name = 'Amount';