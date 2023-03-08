-- YEAR - Retorna o ano de uma data.
-- Exemplo:

CREATE TABLE Exemplo (Data DATE);

INSERT INTO Exemplo VALUES ('2022-01-01');

SELECT YEAR(Data) AS Ano FROM Exemplo;

-- Resultado:

-- Ano
-- 2022