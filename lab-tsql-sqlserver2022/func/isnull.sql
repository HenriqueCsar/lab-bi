-- ISNULL - Substitui um valor nulo por um valor especificado.
-- Exemplo:

CREATE TABLE Exemplo (Valor INT);

INSERT INTO Exemplo VALUES (NULL);

SELECT ISNULL(Valor, 0) AS ValorSubstituido FROM Exemplo;

-- Resultado:
-- 0