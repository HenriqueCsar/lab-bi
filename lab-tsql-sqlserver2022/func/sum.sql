-- SUM - Retorna a soma dos valores em uma coluna.
-- Exemplo:

CREATE TABLE Exemplo (Valor INT);

INSERT INTO Exemplo VALUES (1), (2), (3);

SELECT SUM(Valor) AS Soma FROM Exemplo;

-- Resultado:

-- Soma
-- 6