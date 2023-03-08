-- DATEDIFF - Retorna a diferença entre duas datas em uma unidade de tempo específica.
-- Exemplo:

CREATE TABLE Exemplo (Data1 DATE, Data2 DATE);

INSERT INTO Exemplo VALUES ('2022-01-01', '2022-01-08');

SELECT DATEDIFF(DAY, Data1, Data2) AS DiasDeDiferenca FROM Exemplo;


-- Resultado:

-- DiasDeDiferenca
-- 7