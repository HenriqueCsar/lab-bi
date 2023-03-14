DO $$
DECLARE
  x INT := 10;
  y INT := 20;
  
BEGIN
  IF x > y THEN
    RAISE NOTICE 'X é maior que Y';
  ELSE
    RAISE NOTICE 'Y é maior que X';
  END IF;
END $$;