-- MIN - Retorna o valor mínimo em uma coluna.
-- Exemplo:

CREATE TABLE Exemplo (Valor INT);

INSERT INTO Exemplo VALUES (1), (2), (3);

SELECT MIN(Valor) AS ValorMinimo FROM Exemplo;

-- Resultado:

-- ValorMinimo
-- 1