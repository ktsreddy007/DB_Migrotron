ALTER TABLE Payroll.dbo.pwc_users
ADD Status NVARCHAR(50) NOT NULL 
CONSTRAINT DF_pwc_users_Status DEFAULT 'active';