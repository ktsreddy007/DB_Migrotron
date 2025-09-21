CREATE FUNCTION [dbo].[fn_get_age]
(
    @dob DATE
)
RETURNS INT
AS
BEGIN
    DECLARE @age INT;

    IF @dob IS NULL
        SET @age = NULL;
    ELSE
        SET @age = DATEDIFF(YEAR, @dob, GETDATE()) 
                   - CASE 
                        WHEN MONTH(@dob) > MONTH(GETDATE()) 
                             OR (MONTH(@dob) = MONTH(GETDATE()) AND DAY(@dob) > DAY(GETDATE()))
                        THEN 1
                        ELSE 0
                     END;

    RETURN @age;
END;