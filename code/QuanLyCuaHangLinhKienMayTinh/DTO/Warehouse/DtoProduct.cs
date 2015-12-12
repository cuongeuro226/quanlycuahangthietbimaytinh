using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO.Warehouse
{
    public class DtoProduct
    {
        private string _maSanPham;
        private string _tenSanPham;
        private string _xuatXu;
        private string _nhaPhanPhoi;
        private DateTime _ngaySanXuat;
        private DateTime _ngayHetHan;
        private double _donGiaNhap;
        private double _donGiaBan;
        private string _donViTinh;
        private string _tinhTrang;
        private string _kho;
        private string _ghiChu;

        public string MaSanPham
        {
            get { return _maSanPham; }
            set
            {
                if (value.Length <= 10)
                {
                    _maSanPham = value;
                }
            }
        }

        public string TenSanPham
        {
            get { return _tenSanPham; }
            set
            {
                if (value.Length <= 50)
                {
                    _tenSanPham = value;
                }
            }
        }

        public string XuatXu
        {
            get { return _xuatXu; }
            set
            {
                if (value.Length <= 50)
                {
                    _xuatXu = value;
                }
            }
        }

        public string NhaPhanPhoi
        {
            get { return _nhaPhanPhoi; }
            set
            {
                if (value.Length <= 10)
                {
                    _nhaPhanPhoi = value;
                }
            }
        }

        public DateTime NgaySanXuat
        {
            get { return _ngaySanXuat; }
            set
            {
                if (value < DateTime.Now)
                {
                    _ngaySanXuat = value;
                }
            }
        }

        public DateTime NgayHetHan
        {
            get { return _ngayHetHan; }
            set
            {
                if (value > _ngaySanXuat)
                {
                    _ngayHetHan = value;
                }
            }
        }

        public double DonGiaNhap
        {
            get { return _donGiaNhap; }
            set
            {
                if (value > 0)
                {
                    _donGiaNhap = value;
                }
            }
        }

        public double DonGiaBan
        {
            get { return _donGiaBan; }
            set
            {
                if (value >  0)
                {
                    _donGiaBan = value;
                }
            }
        }

        public string DonViTinh
        {
            get { return _donViTinh; }
            set { _donViTinh = value; }
        }

        public string TinhTrang
        {
            get { return _tinhTrang; }
            set
            {
                if (value.Length <= 10)
                {
                    _tinhTrang = value;
                }
            }
        }

        public string Kho
        {
            get { return _kho; }
            set
            {
                if (value.Length <= 10)
                {
                    _kho = value;
                }
            }
        }

        public string GhiChu
        {
            get { return _ghiChu; }
            set { _ghiChu = value; }
        }
    }
}
