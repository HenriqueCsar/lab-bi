-- LEFT - Retorna os caracteres à esquerda de uma string.
-- Exemplo:

CREATE TABLE Exemplo (Texto VARCHAR(50));

INSERT INTO Exemplo VALUES ('Olá Mundo');

SELECT LEFT(Texto, 3) AS CaracteresEsquerda FROM Exemplo;

-- Resultado:

-- CaracteresEsquerda
-- Olá