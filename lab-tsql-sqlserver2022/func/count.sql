-- COUNT - Retorna o número de linhas em uma tabela ou o número de valores distintos em uma coluna.

CREATE TABLE Exemplo (Valor INT);

INSERT INTO Exemplo VALUES (1), (2), (3);

SELECT COUNT(*) AS TotalLinhas FROM Exemplo;


-- Resultado:

-- TotalLinhas
-- 3