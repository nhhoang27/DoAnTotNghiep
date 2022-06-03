using DoAn_ASPNETCORE.Areas.Admin.Data;
using DoAn_ASPNETCORE.Areas.Admin.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using PagedList;

namespace DoAn_ASPNETCORE.ViewComponents
{
    [ViewComponent(Name = "DongHo")]
    public class DongHoViewComponent : ViewComponent
    {
        private readonly Webbanhang db;
        public DongHoViewComponent(Webbanhang context)
        {
            db = context;
        }
        public async Task<IViewComponentResult> InvokeAsync(
        int id, int page)
        {
            string MyView = "DongHo";

            var items = await LaySanPham(id);

            return View(MyView, items.ToPagedList(page, 12));
        }
        private Task<List<SanPhamModel>> LaySanPham(int id)
        {
            return db.SanPhamModel.Where(x => x.MaLoai == id).ToListAsync();
        }
    }
}
