use QLBH_CuaHangBanMayTinhVaLinhKien

go
create procedure GetListWarehouses
as
select [MaKho]
      ,[TenKho]
      ,[TrangThai]
	  ,[NgayTao]
      ,[GhiChu]
  from [QLBH_CuaHangBanMayTinhVaLinhKien].[dbo].[KHO]
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

go 
create procedure SearchWarehouse
@Query nvarchar(50)
as 
	select [MaKho]
      ,[TenKho]
      ,[TrangThai]
	  ,[NgayTao]
      ,[GhiChu]
	  from [QLBH_CuaHangBanMayTinhVaLinhKien].[dbo].[KHO]
	  where 
	  MaKho like '%' + @Query + '%' or 
	  TenKho like '%' + @Query + '%' or 
	  GhiChu like '%' + @Query + '%' 
 go

 go 
create procedure EditWarehouse
@MaKho nvarchar(10),
@TenKho nvarchar(50), 
@TrangThai int,
@NgayTao smalldatetime, 
@GhiChu nvarchar(100)
as
	update KHO
	set TenKho = @TenKho,
	TrangThai = @TrangThai,
	Ghichu = @GhiChu
	where Makho = @MaKho
go
