CREATE PROCEDURE [dbo].[sp_insert_employee]
    @emp_code       VARCHAR(20),
    @emp_name       VARCHAR(100),
    @emp_fathername VARCHAR(100),
    @emp_sex        CHAR(1),
    @emp_dob        DATE,
    @emp_doj        DATE,
    @emp_doe        DATE = NULL,
    @emp_presaddr   VARCHAR(255),
    @emp_premanaddr VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[emp_master] (
        emp_code, emp_name, emp_fathername, emp_sex,
        emp_dob, emp_doj, emp_doe, emp_presaddr, emp_premanaddr
    )
    VALUES (
        @emp_code, @emp_name, @emp_fathername, @emp_sex,
        @emp_dob, @emp_doj, @emp_doe, @emp_presaddr, @emp_premanaddr
    );
END;