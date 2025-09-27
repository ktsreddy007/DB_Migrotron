
ALTER TABLE Payroll.dbo.users
DROP CONSTRAINT FK_Users_Roles;

ALTER TABLE Payroll.dbo.users
DROP COLUMN RoleId;
