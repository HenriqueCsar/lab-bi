SELECT top 20 t.NAME AS TableName, p.rows AS RowCounts,
    SUM(a.total_pages/1024) * 8 AS TotalSpaceMB, 
    SUM(a.used_pages/1024) * 8 AS UsedSpaceMB, 
    (SUM(a.total_pages/1024) - SUM(a.used_pages/1024)) * 8 AS UnusedSpaceMB
FROM sys.tables t
INNER JOIN sys.indexes i ON t.OBJECT_ID = i.object_id
INNER JOIN sys.partitions p ON i.object_id = p.OBJECT_ID AND i.index_id = p.index_id
INNER JOIN sys.allocation_units a ON p.partition_id = a.container_id
LEFT OUTER JOIN sys.schemas s ON t.schema_id = s.schema_id
GROUP BY t.Name, s.Name, p.Rows
ORDER BY 3 desc