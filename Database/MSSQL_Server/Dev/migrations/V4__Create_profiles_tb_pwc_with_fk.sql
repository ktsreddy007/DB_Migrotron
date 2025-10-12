CREATE TABLE Payroll.dbo.pwc_profiles (
    ProfileID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT NOT NULL,
    Bio NVARCHAR(500),
    CONSTRAINT FK_tcl_profiles_UserID FOREIGN KEY (UserID)
        REFERENCES Payroll.dbo.pwc_users(UserID)
        ON DELETE CASCADE
);