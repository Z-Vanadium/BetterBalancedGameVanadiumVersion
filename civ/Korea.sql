-- gov >= 2 extra campus building science reduce
UPDATE ModifierArguments SET Value = 25 WHERE ModifierID = 'BBG_SEONDEOK_YIELD_SEOWON_BUILDING_FOR_1_GOV_TITLE' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 15 WHERE ModifierID = 'BBG_SEONDEOK_YIELD_SEOWON_BUILDING_FOR_2_GOV_TITLE' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 15 WHERE ModifierID = 'BBG_SEONDEOK_YIELD_SEOWON_BUILDING_FOR_3_GOV_TITLE' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 15 WHERE ModifierID = 'BBG_SEONDEOK_YIELD_SEOWON_BUILDING_FOR_4_GOV_TITLE' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 15 WHERE ModifierID = 'BBG_SEONDEOK_YIELD_SEOWON_BUILDING_FOR_5_GOV_TITLE' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 15 WHERE ModifierID = 'BBG_SEONDEOK_YIELD_SEOWON_BUILDING_FOR_6_GOV_TITLE' AND Name = 'Amount';

-- campus +0 base
UPDATE Adjacency_YieldChanges SET YieldChange=0 WHERE ID='BaseDistrict_Science';