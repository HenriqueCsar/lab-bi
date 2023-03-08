-- RIGHT - Retorna os caracteres à direita de uma string.
-- Exemplo:

CREATE TABLE Exemplo (Texto VARCHAR(50));

INSERT INTO Exemplo VALUES ('Olá Mundo');

SELECT RIGHT(Texto, 5) AS CaracteresDireita FROM Exemplo;
-- Resultado:

-- CaracteresDireita
-- Mundo