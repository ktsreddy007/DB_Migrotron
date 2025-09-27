-- Remove role assignments from users
UPDATE Payroll.dbo.users SET RoleId = NULL WHERE Username IN ('admin', 'user1');

-- Remove inserted roles
DELETE FROM Payroll.dbo.Roles
WHERE RoleName IN ('Admin', 'Editor', 'Viewer');