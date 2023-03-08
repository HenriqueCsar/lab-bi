-- CONCAT - Concatena duas ou mais strings.


CREATE TABLE Exemplo (Nome VARCHAR(50), Sobrenome VARCHAR(50));

INSERT INTO Exemplo VALUES ('João', 'Silva');

SELECT CONCAT(Nome, ' ', Sobrenome) AS NomeCompleto FROM Exemplo;

-- Resultado:
-- NomeCompleto
-- João Silva