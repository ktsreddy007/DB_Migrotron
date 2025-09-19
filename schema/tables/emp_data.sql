CREATE TABLE emp_master (
    id INT IDENTITY(1,1) PRIMARY KEY,              -- Auto-incrementing ID
    emp_code VARCHAR(20) NOT NULL,                 -- Employee Code
    emp_name VARCHAR(100) NOT NULL,                -- Employee Full Name
    emp_fathername VARCHAR(100),                   -- Father's Name
    emp_sex CHAR(1) CHECK (emp_sex IN ('M', 'F')), -- Gender: M or F
    emp_dob DATE,                                  -- Date of Birth
    emp_doj DATE,                                  -- Date of Joining
    emp_doe DATE,                                  -- Date of Exit
    emp_presaddr VARCHAR(255),                     -- Present Address
    emp_premanaddr VARCHAR(255)                    -- Permanent Address
);