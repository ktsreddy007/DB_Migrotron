ALTER TABLE Payroll.dbo.projects
ADD status VARCHAR(20) NOT NULL DEFAULT 'active'
    CONSTRAINT chk_status CHECK (status IN ('active', 'completed', 'on hold'));