-- LEN - Retorna o comprimento de uma string.
-- Exemplo:

CREATE TABLE Exemplo (Texto VARCHAR(50));

INSERT INTO Exemplo VALUES ('Olá Mundo');

SELECT LEN(Texto) AS Comprimento FROM Exemplo;

-- Resultado:

-- Comprimento
-- 9