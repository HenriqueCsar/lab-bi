-- UPPER - Converte uma string em maiúsculas.
-- Exemplo:

CREATE TABLE Exemplo (Texto VARCHAR(50));

INSERT INTO Exemplo VALUES ('olá mundo');

SELECT UPPER(Texto) AS TextoMaiusculo FROM Exemplo;
-- Resultado:

-- TextoMaiusculo
-- OLÁ MUNDO