-- Create Employees table in dbo schema

CREATE TABLE Payroll.dbo.Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NULL,
    HireDate DATE NOT NULL,
    IsActive BIT DEFAULT 1
);