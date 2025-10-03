--adds a Status column to the Users table
ALTER TABLE Payroll.dbo.users
ADD Status NVARCHAR(50) NOT NULL DEFAULT 'active';