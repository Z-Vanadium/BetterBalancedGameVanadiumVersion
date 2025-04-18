-- move double influence from RR to all America leader
DELETE FROM TraitModifiers WHERE ModifierId = 'TRAIT_ROOSEVELT_COROLLARY_TRADE_ROUTE_TOKEN' AND TraitType = 'TRAIT_LEADER_ROOSEVELT_COROLLARY';

INSERT INTO TraitModifiers VALUES ('TRAIT_CIVILIZATION_FOUNDING_FATHERS', 'TRAIT_ROOSEVELT_COROLLARY_TRADE_ROUTE_TOKEN');

-- bias change
INSERT INTO StartBiasNegatives (CivilizationType, FeatureType, Tier) VALUES 
    ('CIVILIZATION_AMERICA', 'FEATURE_FLOODPLAINS', 2),
    ('CIVILIZATION_AMERICA', 'FEATURE_FLOODPLAINS_PLAINS', 2),
    ('CIVILIZATION_AMERICA', 'FEATURE_FLOODPLAINS_GRASSLAND', 2),
    ('CIVILIZATION_AMERICA', 'FEATURE_JUNGLE', 4);
