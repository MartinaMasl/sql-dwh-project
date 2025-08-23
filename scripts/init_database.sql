/*
Data Warehouse Initialization Script
Medallion Architecture: Bronze -> Silver -> Gold Layers
For ERP/CRM Integration Project
*/


-- Drop bronze schema if it exists
DROP SCHEMA IF EXISTS bronze;
GO

-- Drop silver schema if it exists
DROP SCHEMA IF EXISTS silver;
GO

-- Drop gold schema if it exists
DROP SCHEMA IF EXISTS gold;
GO
  
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

--Double-check if schemas bronze, silver, gold exist
SELECT schema_name, schema_id, principal_id
FROM sys.schemas
WHERE schema_name in ('bronze', 'silver', 'gold')
ORDER BY schema_name;
