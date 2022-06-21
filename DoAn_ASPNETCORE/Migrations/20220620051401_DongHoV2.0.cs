using Microsoft.EntityFrameworkCore.Migrations;

namespace DoAn_ASPNETCORE.Migrations
{
    public partial class DongHoV20 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ChiTietHoaDonModel_SanPhamModel_SanPham_ID",
                table: "ChiTietHoaDonModel");

            migrationBuilder.DropIndex(
                name: "IX_ChiTietHoaDonModel_SanPham_ID",
                table: "ChiTietHoaDonModel");

            migrationBuilder.DropColumn(
                name: "SanPham_ID",
                table: "ChiTietHoaDonModel");

            migrationBuilder.AlterColumn<string>(
                name: "TenLoai",
                table: "LoaiSanPhamModel",
                maxLength: 50,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(20)",
                oldMaxLength: 20);

            migrationBuilder.AlterColumn<int>(
                name: "TrangThai",
                table: "HoaDonModel",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "DiaChi",
                table: "HoaDonModel",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "SoLuong",
                table: "ChiTietHoaDonModel",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<string>(
                name: "Gia",
                table: "ChiTietHoaDonModel",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddColumn<int>(
                name: "TrangThai",
                table: "ChiTietHoaDonModel",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DiaChi",
                table: "HoaDonModel");

            migrationBuilder.DropColumn(
                name: "TrangThai",
                table: "ChiTietHoaDonModel");

            migrationBuilder.AlterColumn<string>(
                name: "TenLoai",
                table: "LoaiSanPhamModel",
                type: "nvarchar(20)",
                maxLength: 20,
                nullable: false,
                oldClrType: typeof(string),
                oldMaxLength: 50);

            migrationBuilder.AlterColumn<string>(
                name: "TrangThai",
                table: "HoaDonModel",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AlterColumn<int>(
                name: "SoLuong",
                table: "ChiTietHoaDonModel",
                type: "int",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "Gia",
                table: "ChiTietHoaDonModel",
                type: "int",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SanPham_ID",
                table: "ChiTietHoaDonModel",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_ChiTietHoaDonModel_SanPham_ID",
                table: "ChiTietHoaDonModel",
                column: "SanPham_ID");

            migrationBuilder.AddForeignKey(
                name: "FK_ChiTietHoaDonModel_SanPhamModel_SanPham_ID",
                table: "ChiTietHoaDonModel",
                column: "SanPham_ID",
                principalTable: "SanPhamModel",
                principalColumn: "ID",
                onDelete: ReferentialAction.Cascade);
        }
    }
}