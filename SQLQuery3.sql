USE POSDatabase;
GO

SELECT 
    dp.name AS DatabaseRole, 
    dp.type_desc AS RoleType, 
    p.permission_name, 
    p.state_desc
FROM sys.database_permissions AS p
JOIN sys.database_principals AS dp 
    ON p.grantee_principal_id = dp.principal_id
WHERE dp.name = 'Admin';  -- Replace 'YourUserName' with your actual username
