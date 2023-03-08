-- LOWER - Converte uma string em minúsculas.
-- Exemplo:

CREATE TABLE Exemplo (Texto VARCHAR(50));

INSERT INTO Exemplo VALUES ('OLÁ MUNDO');

SELECT LOWER(Texto) AS TextoMinusculo FROM Exemplo;

-- Resultado:

-- TextoMinusculo
-- olá mundo