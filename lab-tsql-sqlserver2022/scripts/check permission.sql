/*Check user permission on database*/

SELECT * FROM fn_my_permissions('MalikAr', 'USER');  

EXECUTE AS USER = 'Wanida';  
SELECT * FROM fn_my_permissions('HumanResources.Employee', 'OBJECT')   
    ORDER BY subentity_name, permission_name ;    
REVERT;  