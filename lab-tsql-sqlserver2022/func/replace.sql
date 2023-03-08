-- REPLACE - Substitui todas as ocorrências de uma string por outra.
-- Exemplo:

CREATE TABLE Exemplo (Texto VARCHAR(50));

INSERT INTO Exemplo VALUES ('Olá Mundo');

SELECT REPLACE(Texto, 'Mundo', 'Planeta') AS TextoSubstituido FROM Exemplo;
-- Resultado:

-- TextoSubstituido
-- Olá Planeta