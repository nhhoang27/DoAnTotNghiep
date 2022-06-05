using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DoAn_ASPNETCORE.Areas.Admin.Models
{
    public partial class ChiTietHoaDonModel
    {
    }
    public class ChiTietHoaDonModelDTO
    {
        public int ID { get; set; }
        public int HoaDon_ID { get; set; }
        public string TenSP { get; set; }
        public string SoLuong { get; set; }
        public string Gia { get; set; }
        public int KhuyenMai { get; set; }
        public int ThanhTien { get; set; }
        public int TrangThai { get; set; }
    }
}
