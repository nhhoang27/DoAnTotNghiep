using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using DoAn_ASPNETCORE.Areas.Admin.Data;
using DoAn_ASPNETCORE.Areas.Admin.Models;
using Newtonsoft.Json;

namespace DoAn_ASPNETCORE.Areas.Api
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class HoaDonAPIController : ControllerBase
    {
        private readonly Webbanhang _context;

        public HoaDonAPIController(Webbanhang context)
        {
            _context = context;
        }

        // GET: api/HoaDonAPI
        [HttpGet]
        public async Task<ActionResult<IEnumerable<HoaDonModel>>> GetHoaDonModel()
        {
            return await _context.HoaDonModel.ToListAsync();
        }

        // GET: api/HoaDonAPI/5
        [HttpGet("{id}")]
        public async Task<ActionResult<ResultChiTietHoaDon>> GetHoaDonModel(int id)
        {
            var hoaDonModel = await _context.HoaDonModel.Where(x => x.ID == id).Select(x => new HoaDonModelDTO
            {
                ID = x.ID,
                HoTen = x.HoTen,
                Sdt = x.Sdt,
                ThanhTien = x.ThanhTien,
                TrangThai = x.TrangThai,
                User_ID = x.User_ID
            }).FirstOrDefaultAsync();

            if (hoaDonModel == null)
            {
                return NotFound();
            }
            var cthd = await _context.ChiTietHoaDonModel.Where(x => x.HoaDon_ID == id).Select(x => new ChiTietHoaDonModelDTO
            {
                ID = x.ID,
                HoaDon_ID = x.HoaDon_ID,
                Gia = x.Gia,
                KhuyenMai = x.KhuyenMai,
                SoLuong = x.SoLuong,
                TenSP = x.TenSP,
                ThanhTien = x.ThanhTien,
                TrangThai = x.TrangThai
            }).ToListAsync();
            var result = new ResultChiTietHoaDon();
            result.DataHoaDon = hoaDonModel;
            result.LstChiTietHoaDon = cthd;
            //hoaDonModel.lstCTHD = await _context.ChiTietHoaDonModel.Where(x => x.HoaDon_ID == id).ToListAsync();
            return result;
        }

        // PUT: api/HoaDonAPI/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutHoaDonModel(int id, HoaDonModel hoaDonModel)
        {
            if (id != hoaDonModel.ID)
            {
                return BadRequest();
            }

            _context.Entry(hoaDonModel).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!HoaDonModelExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/HoaDonAPI
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<HoaDonModel>> PostHoaDonModel(HoaDonModel hoaDonModel)
        {
            _context.HoaDonModel.Add(hoaDonModel);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetHoaDonModel", new { id = hoaDonModel.ID }, hoaDonModel);
        }
     

        // DELETE: api/HoaDonAPI/5
        [HttpDelete("{id}")]
        public async Task<bool> DeleteHoaDonModel(int id)
        {
            try
            {
                var hoaDonModel = await _context.HoaDonModel.FindAsync(id);
                hoaDonModel.TrangThai = 0;
                if (hoaDonModel == null)
                {
                    return false;
                }

                //_context.HoaDonModel.Update(hoaDonModel);
                _context.HoaDonModel.Remove(hoaDonModel);
                await _context.SaveChangesAsync();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            
        }

        private bool HoaDonModelExists(int id)
        {
            return _context.HoaDonModel.Any(e => e.ID == id);
        }
        
    }
}
