/* Checksum can detect changes in a table.

the checksum result does not depend on the order of the rowsin the table. */

SELECT CHECKSUM_AGG(CAST(Quantity AS INT))  
FROM Production.ProductInventory with(nolock);  
GO  

-- The result was 262


UPDATE Production.ProductInventory   
SET Quantity=125  
WHERE Quantity=100;  
GO  


--Get the checksum of the modified column.  
SELECT CHECKSUM_AGG(CAST(Quantity AS INT))  
FROM Production.ProductInventory with(nolock);  

---- The result was 287