/* ADVENTURESWORKS2019 */

SELECT Department, LastName, Rate,   
       CUME_DIST () OVER (PARTITION BY Department ORDER BY Rate) AS CumeDist,   
       PERCENT_RANK() OVER (PARTITION BY Department ORDER BY Rate ) AS PctRank  
FROM HumanResources.vEmployeeDepartmentHistory AS edh  
    INNER JOIN HumanResources.EmployeePayHistory AS e    
    ON e.BusinessEntityID = edh.BusinessEntityID  
WHERE Department IN (N'Information Services',N'Document Control')   
ORDER BY Department, Rate DESC;  


/* Informa a posição relativa de uma valor dentro do grupo */

-- Department             LastName               Rate                  CumeDist               PctRank  
-- ---------------------- ---------------------- --------------------- ---------------------- ----------------------  
-- Document Control       Arifin                 17.7885               1                      1  
-- Document Control       Norred                 16.8269               0.8                    0.5  
-- Document Control       Kharatishvili          16.8269               0.8                    0.5  
-- Document Control       Chai                   10.25                 0.4                    0  
-- Document Control       Berge                  10.25                 0.4                    0  
-- Information Services   Trenary                50.4808               1                      1  
-- Information Services   Conroy                 39.6635               0.9                    0.888888888888889  
-- Information Services   Ajenstat               38.4615               0.8                    0.666666666666667  
-- Information Services   Wilson                 38.4615               0.8                    0.666666666666667  
-- Information Services   Sharma                 32.4519               0.6                    0.444444444444444  
-- Information Services   Connelly               32.4519               0.6                    0.444444444444444  
-- Information Services   Berg                   27.4038               0.4                    0  
-- Information Services   Meyyappan              27.4038               0.4                    0  
-- Information Services   Bacon                  27.4038               0.4                    0  
-- Information Services   Bueno                  27.4038               0.4                    0  
-- (15 row(s) affected)  