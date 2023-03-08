-- DATEPART - Retorna uma parte específica de uma data.
-- Exemplo:

CREATE TABLE Exemplo (Data DATE);

INSERT INTO Exemplo VALUES ('2022-01-01');

SELECT DATEPART(YEAR, Data) AS Ano, DATEPART(MONTH, Data) AS Mes, DATEPART(DAY, Data) AS Dia FROM Exemplo;
-- Resultado:

-- Ano	Mes	Dia
-- 2022	1	1