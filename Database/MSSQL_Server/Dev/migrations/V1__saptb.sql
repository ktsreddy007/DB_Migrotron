USE Payroll;
GO

CREATE TABLE dbo.sap_force (
    id INT PRIMARY KEY,
    name NVARCHAR(100),
    sex CHAR(1),
    dob DATE,
    place NVARCHAR(100)
);