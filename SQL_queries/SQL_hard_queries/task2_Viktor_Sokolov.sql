-- Table transformation (basically creating pivot table)

SELECT ID, 
    MAX(CASE WHEN Name = "A" THEN Val END) AS "A",
    MAX(CASE WHEN Name = "B" THEN Val END) AS "B",
    MAX(CASE WHEN Name = "C" THEN Val END) AS "C"
    FROM table_to_be_transformed GROUP BY ID;
