-- RTRIM - Remove espaços em branco do final de uma string.
-- Exemplo:

CREATE TABLE Exemplo (Texto VARCHAR(50));

INSERT INTO Exemplo VALUES ('Olá Mundo  ');

SELECT RTRIM(Texto) AS TextoSemEspaco FROM Exemplo;

-- Resultado:

-- TextoSemEspaco
-- Olá Mundo