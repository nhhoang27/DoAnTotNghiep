﻿using System;
using DoAn_ASPNETCORE.Areas.Admin.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace DoAn_ASPNETCORE.Migrations
{
    [DbContext(typeof(Webbanhang))]
    [Migration("20220620051401_DongHoV2.0")]
    partial class DongHoV20
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.10")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.BinhLuanModel", b =>
            {
                b.Property<int>("id")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int")
                    .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                b.Property<DateTime>("NgayDang")
                    .HasColumnType("datetime2");

                b.Property<string>("NoiDung")
                    .HasColumnType("nvarchar(max)");

                b.Property<int?>("SanPhamID")
                    .HasColumnType("int");

                b.Property<int>("SanPham_ID")
                    .HasColumnType("int");

                b.Property<int>("TrangThai")
                    .HasColumnType("int");

                b.Property<int>("User_ID")
                    .HasColumnType("int");

                b.HasKey("id");

                b.HasIndex("SanPhamID");

                b.HasIndex("User_ID");

                b.ToTable("BinhLuanModel");
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.ChiTietHoaDonModel", b =>
            {
                b.Property<int>("ID")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int")
                    .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                b.Property<string>("Gia")
                    .HasColumnType("nvarchar(max)");

                b.Property<int>("HoaDon_ID")
                    .HasColumnType("int");

                b.Property<int>("KhuyenMai")
                    .HasColumnType("int");

                b.Property<string>("SoLuong")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("TenSP")
                    .HasColumnType("nvarchar(max)");

                b.Property<int>("ThanhTien")
                    .HasColumnType("int");

                b.Property<int>("TrangThai")
                    .HasColumnType("int");

                b.HasKey("ID");

                b.HasIndex("HoaDon_ID");

                b.ToTable("ChiTietHoaDonModel");
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.DanhMucModel", b =>
            {
                b.Property<string>("ID_DanhMuc")
                    .HasColumnType("nvarchar(450)");

                b.Property<string>("TenDanhMuc")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("TrangThai")
                    .HasColumnType("nvarchar(max)");

                b.HasKey("ID_DanhMuc");

                b.ToTable("DanhMucModel");
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.HoaDonModel", b =>
            {
                b.Property<int>("ID")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int")
                    .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                b.Property<string>("DiaChi")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("HoTen")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Sdt")
                    .HasColumnType("nvarchar(max)");

                b.Property<int>("ThanhTien")
                    .HasColumnType("int");

                b.Property<int>("TrangThai")
                    .HasColumnType("int");

                b.Property<int>("User_ID")
                    .HasColumnType("int");

                b.HasKey("ID");

                b.HasIndex("User_ID");

                b.ToTable("HoaDonModel");
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.LoaiSanPhamModel", b =>
            {
                b.Property<int>("ID")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int")
                    .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                b.Property<int>("NhaCungCap")
                    .HasColumnType("int");

                b.Property<string>("TenLoai")
                    .IsRequired()
                    .HasColumnType("nvarchar(50)")
                    .HasMaxLength(50);

                b.Property<string>("TrangThai")
                    .IsRequired()
                    .HasColumnType("nvarchar(max)");

                b.HasKey("ID");

                b.HasIndex("NhaCungCap");

                b.ToTable("LoaiSanPhamModel");
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.NhaCungCapModel", b =>
            {
                b.Property<int>("ID")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int")
                    .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                b.Property<string>("DiaChi")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("TenNCC")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("TrangThai")
                    .HasColumnType("nvarchar(max)");

                b.HasKey("ID");

                b.ToTable("NhaCungCapModel");
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.SanPhamModel", b =>
            {
                b.Property<int>("ID")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int")
                    .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                b.Property<string>("DanhMuc")
                    .HasColumnType("nvarchar(450)");

                b.Property<int>("Gia")
                    .HasColumnType("int");

                b.Property<int>("GiaMoi")
                    .HasColumnType("int");

                b.Property<string>("Image")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Image_List")
                    .HasColumnType("nvarchar(max)");

                b.Property<int>("MaLoai")
                    .HasColumnType("int");

                b.Property<string>("MoTa")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("MoTaNgan")
                    .HasColumnType("nvarchar(max)");

                b.Property<DateTime>("NgayLap")
                    .HasColumnType("datetime2");

                b.Property<string>("Size")
                    .HasColumnType("nvarchar(max)");

                b.Property<int>("SoLuong")
                    .HasColumnType("int");

                b.Property<string>("TenSP")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("TrangThai")
                    .HasColumnType("nvarchar(max)");

                b.HasKey("ID");

                b.HasIndex("DanhMuc");

                b.HasIndex("MaLoai");

                b.ToTable("SanPhamModel");
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.UserModel", b =>
            {
                b.Property<int>("ID")
                    .ValueGeneratedOnAdd()
                    .HasColumnType("int")
                    .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                b.Property<string>("DiaChi")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Email")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("HoTen")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Loai")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Password")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("Sdt")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("TrangThai")
                    .HasColumnType("nvarchar(max)");

                b.Property<string>("UserName")
                    .HasColumnType("nvarchar(max)");

                b.HasKey("ID");

                b.ToTable("UserModel");
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.BinhLuanModel", b =>
            {
                b.HasOne("DoAn_ASPNETCORE.Areas.Admin.Models.SanPhamModel", "SanPham")
                    .WithMany()
                    .HasForeignKey("SanPhamID");

                b.HasOne("DoAn_ASPNETCORE.Areas.Admin.Models.UserModel", "User")
                    .WithMany()
                    .HasForeignKey("User_ID")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.ChiTietHoaDonModel", b =>
            {
                b.HasOne("DoAn_ASPNETCORE.Areas.Admin.Models.HoaDonModel", "HoaDon")
                    .WithMany("lstCTHD")
                    .HasForeignKey("HoaDon_ID")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.HoaDonModel", b =>
            {
                b.HasOne("DoAn_ASPNETCORE.Areas.Admin.Models.UserModel", "User")
                    .WithMany("lstHoaDon")
                    .HasForeignKey("User_ID")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.LoaiSanPhamModel", b =>
            {
                b.HasOne("DoAn_ASPNETCORE.Areas.Admin.Models.NhaCungCapModel", "MaNCC")
                    .WithMany("lstLoaiSanPham")
                    .HasForeignKey("NhaCungCap")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();
            });

            modelBuilder.Entity("DoAn_ASPNETCORE.Areas.Admin.Models.SanPhamModel", b =>
            {
                b.HasOne("DoAn_ASPNETCORE.Areas.Admin.Models.DanhMucModel", "DMuc")
                    .WithMany("dmucSanPham")
                    .HasForeignKey("DanhMuc");

                b.HasOne("DoAn_ASPNETCORE.Areas.Admin.Models.LoaiSanPhamModel", "Loai")
                    .WithMany("lstSanPham")
                    .HasForeignKey("MaLoai")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();
            });
#pragma warning restore 612, 618
        }
    }
}