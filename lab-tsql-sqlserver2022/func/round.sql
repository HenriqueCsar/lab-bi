-- ROUND - Arredonda um valor para um número especificado de casas decimais.
-- Exemplo:

CREATE TABLE Exemplo (Valor FLOAT);

INSERT INTO Exemplo VALUES (1.23456);

SELECT ROUND(Valor, 2) AS ValorArredondado FROM Exemplo;

-- Resultado:

-- ValorArredondado
-- 1.23