-- MONTH - Retorna o mês de uma data.
-- Exemplo:

CREATE TABLE Exemplo (Data DATE);

INSERT INTO Exemplo VALUES ('2022-01-01');

SELECT MONTH(Data) AS Mes FROM Exemplo;
-- Resultado:

-- Mes
-- 1