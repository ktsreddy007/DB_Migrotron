ALTER TABLE Payroll.dbo.tcl_users
ADD Status NVARCHAR(50) NOT NULL DEFAULT 'active';

-- This inserts data
INSERT INTO Payroll.dbo.tcl_users (Username, Email, Status)
VALUES 
('admin', 'admin@example.com','active'),
('user1', 'user1@example.com','inactive');
