-- Insert roles
INSERT INTO Payroll.dbo.Roles (RoleName)
VALUES ('Admin'), ('Editor'), ('Viewer');

-- Assign roles to existing users
UPDATE Payroll.dbo.users
SET RoleId = (SELECT RoleId FROM Payroll.dbo.Roles WHERE RoleName = 'Admin')
WHERE Username = 'admin';

UPDATE Payroll.dbo.users
SET RoleId = (SELECT RoleId FROM Payroll.dbo.Roles WHERE RoleName = 'Viewer')
WHERE Username = 'user1';