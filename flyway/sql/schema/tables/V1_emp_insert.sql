-- Insert sample data into emp_master
INSERT INTO [dbo].[emp_master] (
    [emp_code], 
    [emp_name], 
    [emp_fathername], 
    [emp_sex], 
    [emp_dob], 
    [emp_doj], 
    [emp_doe], 
    [emp_presaddr], 
    [emp_premanaddr]
)
VALUES 
-- 1
('EMP001', 'John Doe', 'Robert Doe', 'M', '1985-06-15', '2010-01-10', NULL, '123 Main St, NY', '456 Park Ave, NY'),
-- 2
('EMP002', 'Jane Smith', 'Michael Smith', 'F', '1990-09-21', '2015-07-01', NULL, '789 Elm St, LA', '101 Maple St, LA'),
-- 3
('EMP003', 'Ali Khan', 'Ahmed Khan', 'M', '1988-12-05', '2012-03-15', '2022-06-30', '22 Garden Rd, Dubai', '33 Palm St, Dubai'),
-- 4
('EMP004', 'Priya Sharma', 'Raj Sharma', 'F', '1992-04-11', '2016-10-01', NULL, '5 Green Ln, Delhi', '9 Red Rd, Delhi'),
-- 5
('EMP005', 'Carlos Rivera', 'Manuel Rivera', 'M', '1983-01-25', '2008-11-20', NULL, '78 Sunset Blvd, LA', '90 Sunrise Dr, LA');