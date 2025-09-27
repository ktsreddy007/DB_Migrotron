-- Create the 'Roles' table
IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'Payroll.dbo.Roles' AND TABLE_SCHEMA = 'dbo'
)
BEGIN
CREATE TABLE Payroll.dbo.Roles (
    RoleId INT IDENTITY(1,1) PRIMARY KEY,
    RoleName NVARCHAR(100) NOT NULL UNIQUE
);
END