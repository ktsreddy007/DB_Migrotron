-- Create Audit table
CREATE TABLE Payroll.dbo.UserAuditLog (
    AuditId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    OldEmail NVARCHAR(255),
    NewEmail NVARCHAR(255),
    ChangedAt DATETIME2 DEFAULT GETDATE()
);

-- End the current batch before creating the trigger
GO

-- Create trigger to log email changes
CREATE TRIGGER dbo.trg_AuditUserEmailUpdate
ON dbo.users
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.UserAuditLog (UserId, OldEmail, NewEmail)
    SELECT
        i.Id,
        d.Email,
        i.Email
    FROM inserted i
    INNER JOIN deleted d ON i.Id = d.Id
    WHERE i.Email <> d.Email;
END;