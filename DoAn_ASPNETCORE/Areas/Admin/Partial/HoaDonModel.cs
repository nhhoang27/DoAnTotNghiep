using DoAn_ASPNETCORE.Areas.Admin.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DoAn_ASPNETCORE.Areas.Admin.Models
{
    public partial class HoaDonModel
    {

    }

    public class HoaDonModelDTO
    {
        public int ID { get; set; }
        public int User_ID { get; set; }
        public string HoTen { get; set; }
        public string Sdt { get; set; }
        public int ThanhTien { get; set; }
        public int TrangThai { get; set; }
        public string StrTrangThai { get; set; }
    }
    public class ResultChiTietHoaDon
    {
        public HoaDonModelDTO DataHoaDon { get; set; }
        public List<ChiTietHoaDonModelDTO> LstChiTietHoaDon { get; set; }
    }
}