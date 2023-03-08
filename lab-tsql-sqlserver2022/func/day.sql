-- DAY - Retorna o dia de uma data.
-- Exemplo:

CREATE TABLE Exemplo (Data DATE);

INSERT INTO Exemplo VALUES ('2022-01-01');

SELECT DAY(Data) AS Dia FROM Exemplo;

-- Resultado:

-- Dia
-- 1