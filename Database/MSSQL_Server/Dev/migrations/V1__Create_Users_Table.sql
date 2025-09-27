-- Create the 'users' table
IF NOT EXISTS (
    SELECT * FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_NAME = 'users' AND TABLE_SCHEMA = 'dbo'
)
BEGIN
CREATE TABLE Payroll.dbo.users (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);
END
-- Optional: Add some initial data
INSERT INTO Payroll.dbo.users (id, name, email) VALUES
(1, 'John Doe', 'john.doe@example.com'),
(2, 'Jane Smith', 'jane.smith@example.com');