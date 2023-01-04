UPDATE [OPENDATA].[NL_RDW_KENTEKEN]
SET handelsbenaming = CASE 
    WHEN handelsbenaming LIKE '%MODEL S%' OR handelsbenaming LIKE 'S%'  THEN 'MODEL S' 
    WHEN handelsbenaming LIKE '%STER%' OR handelsbenaming ='TYPE 001' THEN 'ROADSTER' 
    WHEN handelsbenaming LIKE '%Model%3%' THEN 'MODEL 3' 
    WHEN handelsbenaming LIKE '%Model%Y%' THEN 'MODEL Y' 
    WHEN handelsbenaming LIKE '%Model%X%' OR handelsbenaming LIKE 'X%'  THEN 'MODEL X' 
  ELSE handelsbenaming END
  WHERE merk='Tesla' and handelsbenaming not in ('MODEL S','ROADSTER','MODEL 3','MODEL Y')
