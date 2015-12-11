use QLBH_CuaHangBanMayTinhVaLinhKien

go
create procedure GetListWarehouses
as
SELECT [MaKho]
      ,[TenKho]
      ,[TrangThai]
	  ,[NgayTao]
      ,[GhiChu]
  FROM [QLBH_CuaHangBanMayTinhVaLinhKien].[dbo].[KHO]
go

go 
create procedure AddWarehouse
@MaKho nvarchar(10),
@TenKho nvarchar(50), 
@TrangThai int,
@NgayTao smalldatetime, 
@GhiChu nvarchar(100)
as
	insert into KHO(MaKho, TenKho, TrangThai, NgayTao, Ghichu)
	values(@MaKho, @TenKho, @TrangThai, @NgayTao, @GhiChu)
go


