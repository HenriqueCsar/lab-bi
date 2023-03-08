-- DATEADD - Adiciona uma quantidade específica de tempo a uma data.

CREATE TABLE Exemplo (Data DATE);

INSERT INTO Exemplo VALUES ('2022-01-01');

SELECT DATEADD(DAY, 7, Data) AS DataAdicionada FROM Exemplo;

--Resultado
-- DataAdicionada
-- 2022-01-08