-- SUBSTRING - Retorna uma parte de uma string.
-- Exemplo:

CREATE TABLE Exemplo (Texto VARCHAR(50));

INSERT INTO Exemplo VALUES ('Olá Mundo');

SELECT SUBSTRING(Texto, 2, 3) AS ParteTexto FROM Exemplo;

-- Resultado:

-- ParteTexto
-- lá