
-- CAST - Converte um valor de um tipo de dados para outro.

CREATE TABLE Exemplo (Numero VARCHAR(10));

INSERT INTO Exemplo VALUES ('5');

SELECT CAST(Numero AS INT) AS ValorInteiro FROM Exemplo;

-- Resultado : 5