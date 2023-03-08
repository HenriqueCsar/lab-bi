-- FORMAT - Formata um valor com um formato especificado.
-- Exemplo:

CREATE TABLE Exemplo (Valor FLOAT);

INSERT INTO Exemplo VALUES (1000.25);

SELECT FORMAT(Valor, 'C', 'en-us') AS ValorFormatado FROM Exemplo;
SELECT FORMAT(Valor, 'C', 'pt-br') AS ValorFormatado FROM Exemplo;

SELECT FORMAT(cast('20220301' as date), 'yyyy-MM-dd', 'pt-br') AS ValorFormatado FROM Exemplo;

-- Resultado:

-- ValorFormatado
-- $1,000.25
-- 2022-03-01