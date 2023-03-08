-- EXISTS - Verifica se uma subconsulta retorna algum resultado.
-- Exemplo:

IF EXISTS (SELECT * FROM Exemplo WHERE Valor = 1)
BEGIN
    PRINT 'Existe pelo menos um registro com Valor = 1';
END

-- Resultado:
-- Existe pelo menos um registro com Valor = 1