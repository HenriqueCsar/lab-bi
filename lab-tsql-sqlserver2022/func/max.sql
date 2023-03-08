-- MAX - Retorna o valor máximo em uma coluna.
-- Exemplo:

CREATE TABLE Exemplo (Valor INT);

INSERT INTO Exemplo VALUES (1), (2), (3);

SELECT MAX(Valor) AS ValorMaximo FROM Exemplo;

-- Resultado:

-- ValorMaximo
-- 3