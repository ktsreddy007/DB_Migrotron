ALTER TABLE Payroll.dbo.NB_users
ADD RoleId INT NULL;

ALTER TABLE Payroll.dbo.NB_users
ADD CONSTRAINT FK_Users_Roles
FOREIGN KEY (RoleId) REFERENCES Payroll.dbo.NB_Roles(RoleId);