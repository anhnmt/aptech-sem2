DELIMITER //
CREATE Procedure sp_getstudent(
	IN stid int,
    OUT stroll varchar(8),
    OUT stname varchar(256)
)
BEGIN

	SELECT `rollnumber`,`name` INTO stroll, stname FROM `tblsinhvien` WHERE `id` = stid;
END //
DELIMITER ;

-- ==== Mã thử kiểm tra hoạt động của PROCEDURE =====
SET @roll;
SET @name;
CALL sp_getstudent(1,@roll,@name);
SELECT @roll, @name;