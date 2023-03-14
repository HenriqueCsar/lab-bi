DO $$
DECLARE
  variavel TEXT := '3223';
  query TEXT;
  
BEGIN
  query := 'SELECT ''' || variavel || '''';
  EXECUTE query;
END $$;