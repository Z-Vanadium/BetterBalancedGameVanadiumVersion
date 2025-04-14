-- crabs change to +1 production +1 gold, and may spawn on reef
DELETE FROM Resource_YieldChanges WHERE ResourceType = 'RESOURCE_CRABS';
INSERT INTO Resource_YieldChanges VALUES ('RESOURCE_CRABS', 'YIELD_GOLD', 1);
INSERT INTO Resource_YieldChanges VALUES ('RESOURCE_CRABS', 'YIELD_PRODUCTION', 1);
INSERT INTO Resource_ValidFeatures VALUES ('RESOURCE_CRABS', 'FEATURE_REEF');

-- fish boat bonus
INSERT INTO Improvement_BonusYieldChanges VALUES
    (4000, 'IMPROVEMENT_FISHING_BOATS', 1, 'TECH_INDUSTRIALIZATION', NULL);