IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'Payroll.dbo.xmastb' AND TABLE_SCHEMA = 'dbo'
)
BEGIN
CREATE TABLE Payroll.dbo.xmastb (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,  -- Auto-increment primary key
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    HireDate DATE NOT NULL,
    Department NVARCHAR(50),
    Salary DECIMAL(18, 2) CHECK (Salary >= 0),
    IsActive BIT DEFAULT 1,  -- Active employee flag
    CreatedAt DATETIME DEFAULT GETDATE()
);
END;