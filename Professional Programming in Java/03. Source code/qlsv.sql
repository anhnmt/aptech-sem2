-- Tạo database qlsv
CREATE DATABASE qlsv;
go
-- Sử dụng database qlsv
USE qlsv;
go

-- Tạo bảng
CREATE TABLE tblsinhvien (
  id int NOT NULL identity,
  rollnumber varchar(15) NOT NULL unique,
  name nvarchar(50) NOT NULL,
  address nvarchar(200) DEFAULT NULL,
  phone varchar(11) DEFAULT NULL,
  gender bit NOT NULL,
  PRIMARY KEY (id),  
);


--Thêm dữ liệu vào bảng tblsinhvien

INSERT INTO tblsinhvien (rollnumber, name, address, phone, gender) VALUES
('C1505001', 'Ma Sieu', 'Tay Luong', '19001265', 1),
('C1505002', 'Dieu Thuyen', 'To Chau', '19001001', 0),
('C1505003', 'Ma Sieu', 'Tay Luong', '19001265', 1);

select * from tblsinhvien

-- Xem port của sql server
--sp_readerrorlog 0,1,'server is listening on'

--update tblsinhvien set name=?, address=?, phone=? where id=?

-- Tạo thủ tục lưu trữ
go
create proc sp_getstudent
@RollNumber varchar(15)
as
select * from tblsinhvien where rollnumber=@RollNumber