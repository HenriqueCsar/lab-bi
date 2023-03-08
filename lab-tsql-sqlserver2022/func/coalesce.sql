-- COALESCE - Retorna o primeiro valor não nulo de uma lista de expressões.

CREATE TABLE Exemplo (Valor1 INT, Valor2 INT);

INSERT INTO Exemplo VALUES (NULL, 5);

SELECT COALESCE(Valor1, Valor2) AS Valor FROM Exemplo;

-- Resultado : 5