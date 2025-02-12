
--Creating Database and Schema

--Drop database and recreate a database
Use master;

IF exists (select 1 from sys.databases where name = 'DataWarehouse')

BEGIN 

ALTER DATABASE DataWarehouse SET single_user WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse

END;
GO


Create DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
