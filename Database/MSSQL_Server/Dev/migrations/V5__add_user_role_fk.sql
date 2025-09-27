ALTER TABLE Payroll.dbo.users
ADD RoleId INT NULL;

ALTER TABLE Payroll.dbo.users
ADD CONSTRAINT FK_Users_Roles
FOREIGN KEY (RoleId) REFERENCES Payroll.dbo.Roles(RoleId);