CREATE PROCEDURE [dbo].[sp_get_employees_by_gender]
    @gender CHAR(1)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT * 
    FROM [dbo].[emp_master]
    WHERE emp_sex = @gender;
END;