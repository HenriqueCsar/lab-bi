
-- ABS - Retorna o valor absoluto de um número.

CREATE TABLE Exemplo (Numero INT);

INSERT INTO Exemplo VALUES (-5);

SELECT ABS(Numero) AS ValorAbsoluto FROM Exemplo;
--Retorno : 5