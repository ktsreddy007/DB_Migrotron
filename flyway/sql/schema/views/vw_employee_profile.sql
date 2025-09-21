CREATE VIEW [dbo].[vw_employee_profile]
AS
SELECT 
    id,
    emp_code,
    emp_name,
    emp_fathername,
    emp_sex,
    emp_dob,
    dbo.fn_get_age(emp_dob) AS emp_age,
    emp_doj,
    emp_doe,
    emp_presaddr,
    emp_premanaddr
FROM [dbo].[emp_master];