-- NULLIF - Retorna nulo se dois valores especificados forem iguais.
-- Exemplo:

CREATE TABLE Exemplo (Valor1 INT, Valor2 INT);

INSERT INTO Exemplo VALUES (5, 5);

SELECT NULLIF(Valor1, Valor2) AS ValorDiferente FROM Exemplo;

-- Resultado:

ValorDiferente
NULL