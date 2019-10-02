/*Please add ; after each select statement*/
CREATE PROCEDURE top5AverageGrade()
BEGIN
    SELECT 
    SUM(dataTop.grade), COUNT(*) INTO @total, @count 
    FROM (
        SELECT grade FROM students ORDER BY grade DESC LIMIT 5
    ) dataTop;
    
    -- SELECT @total, @count, (@total/@count) as average_grade;
    SELECT ROUND((@total/@count), 2) as average_grade;
END