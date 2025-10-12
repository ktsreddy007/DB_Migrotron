-- Insert more users
INSERT INTO Payroll.dbo.pwc_users (Username, Email, Status)
VALUES 
('user2', 'user2@example.com', 'inactive'),
('user3', 'user3@example.com', 'active'),
('user4', 'user4@example.com', 'inactive'),
('user5', 'user5@example.com', 'inactive'),
('user6', 'user6@example.com', 'active');

-- Insert profiles linked to existing users
INSERT INTO Payroll.dbo.pwc_profiles (UserID, Bio)
VALUES
(1, 'System administrator profile'),
(2, 'User 1 bio'),
(3, 'User 2 bio');