-- acropolis adjancency
DELETE FROM District_Adjacencies WHERE DistrictType = 'DISTRICT_ACROPOLIS' AND YieldChangeId = 'District_Culture_City_Center';
-- INSERT INTO Adjacency_YieldChanges(ID, Description, YieldType, YieldChange, Self) VALUES
--     ('BBGV_ACROPOLOS_BASE_CULTURE', 'LOC_BBGV_ACROPOLOS_BASE_CULTURE', 'YIELD_CULTURE', 2, 1);
-- INSERT INTO District_Adjacencies VALUES ('DISTRICT_ACROPOLIS', 'BBGV_ACROPOLOS_BASE_CULTURE');

-- great writer point +1 extra
UPDATE District_GreatPersonPoints SET PointsPerTurn = 2 WHERE DistrictType = 'DISTRICT_ACROPOLIS' AND GreatPersonClassType = 'GREAT_PERSON_CLASS_WRITER';