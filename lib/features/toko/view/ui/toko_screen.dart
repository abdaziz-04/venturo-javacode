import 'package:diet_nyaman_app/configs/routes/route.dart';
import 'package:diet_nyaman_app/configs/themes/app_colors.dart';
import 'package:diet_nyaman_app/configs/themes/app_fonts.dart';
import 'package:diet_nyaman_app/features/toko/view/components/card_toko_components.dart';
import 'package:flutter/material.dart';
import 'package:diet_nyaman_app/features/toko/constants/toko_assets_constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TokoScreen extends StatelessWidget {
  TokoScreen({super.key});

  final assetsConstant = TokoAssetsConstant();
  var dataDummy = [
    {"gambar": TokoAssetsConstant().drummyProduk1, "kategori": "Minuman", "title": "Super Food - Ubi Jalar", "harga": "Rp 50.000"},
    {"gambar": TokoAssetsConstant().drummyProduk2, "kategori": "Makanan", "title": "Super Food - Ubi Jalar", "harga": "Rp 100.000"},
    {"gambar": TokoAssetsConstant().drummyProduk3, "kategori": "Minuman", "title": "Super Food - Ubi Jalar", "harga": "Rp 25.000"},
    {"gambar": TokoAssetsConstant().drummyProduk4, "kategori": "Makanan", "title": "Super Food - Ubi Jalar", "harga": "Rp 10.000"},
    {"gambar": TokoAssetsConstant().drummyProduk5, "kategori": "Minuman", "title": "Super Food - Ubi Jalar", "harga": "Rp 35.000"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => const SizedBox(),
          ),
          foregroundColor: AppColors.blackText800,
          backgroundColor: AppColors.white,
          centerTitle: true,
          title: const Text("Toko"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  shrinkWrap: true,
                  itemCount: dataDummy.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Get.toNamed(Routes.tokoDetailRoute),
                    child: CardTokoComponents(
                        kategori: dataDummy[index]["kategori"] ?? "",
                        title: dataDummy[index]["title"] ?? "",
                        harga: dataDummy[index]["harga"] ?? "",
                        gambar: dataDummy[index]["gambar"] ?? ""),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .7,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
