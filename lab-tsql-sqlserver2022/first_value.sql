/**/

SELECT JobTitle, LastName, VacationHours,
       FIRST_VALUE(LastName) OVER (PARTITION BY JobTitle
                                   ORDER BY VacationHours ASC
                                   ROWS UNBOUNDED PRECEDING
                                  ) AS FewestVacationHours
FROM HumanResources.Employee AS e
INNER JOIN Person.Person AS p
    ON e.BusinessEntityID = p.BusinessEntityID
ORDER BY JobTitle;
