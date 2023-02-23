CREATE TABLE Pedidos (
    Id int PRIMARY KEY,
    Itens nvarchar(max)
);

INSERT INTO Pedidos VALUES (1, 'camisa,calça,meias');
INSERT INTO Pedidos VALUES (2, 'sapato,blusa,saias');
INSERT INTO Pedidos VALUES (3, 'gravata,terno,cinto');


select * from pedidos


SELECT Id, value AS Item
FROM (
    SELECT Id, value
    FROM Pedidos
    CROSS APPLY STRING_SPLIT(Pedidos.Itens, ',')
) s;


    SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS N
    FROM sys.objects s1
    CROSS JOIN sys.objects s2


select * from sys.objects where name = 'pedidos'
se


WITH Numbers AS (
    SELECT top 1 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS N
    FROM sys.objects s1
    CROSS JOIN sys.objects s2
)
SELECT p.id, SUBSTRING(',' + p.itens + ',', N + 1, CHARINDEX(',', ',' + p.itens + ',', N + 1) - N - 1) AS item
FROM pedidos p
JOIN Numbers ON N <= LEN(p.itens) - LEN(REPLACE(p.itens, ',', '')) + 1;


CREATE FUNCTION dbo.splitString(@str nvarchar(max), @separator char(1))
RETURNS @result TABLE (value nvarchar(max))
AS
BEGIN
    DECLARE @start int = 1, @end int = 0

    WHILE @end < LEN(@str)
    BEGIN
        SET @end = CHARINDEX(@separator, @str, @start)

        IF @end = 0
            SET @end = LEN(@str) + 1

        INSERT INTO @result(value)
        VALUES(SUBSTRING(@str, @start, @end - @start))

        SET @start = @end + 1
    END

    RETURN
END


SELECT id,value
FROM Pedidos
CROSS APPLY dbo.splitString(Pedidos.Itens, ',')