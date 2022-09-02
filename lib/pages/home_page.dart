import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nyari_1/model/ads.dart';
import 'package:nyari_1/model/category.dart';
import 'package:nyari_1/pages/search_page.dart';
import 'package:nyari_1/theme.dart';
import 'package:nyari_1/widgets/ads_card.dart';
import 'package:nyari_1/widgets/bestproduct_card.dart';
import 'package:nyari_1/widgets/category_card.dart';

import '../widgets/superior_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(height: 27),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Halo, User!',
                    style: purpleTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.bell),
                  ),
                ],
              ),
            ),
            // ====================================
            // NOTE : SEARCH BAR
            // ====================================
            SizedBox(height: 26),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cari nama produk',
                            style: greyTextStyle.copyWith(fontSize: 15),
                          ),
                          Image.asset('assets/icon_search.png',
                              height: 24, width: 24),
                        ]),
                  ),
                ),
              ),
            ),

//=========================================
// NOTE : ADS CARD
// ========================================
            SizedBox(height: 26),
            Container(
              height: 125,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: edge),
                  AdsCard(
                    Ads(id: 1, imageUrl: 'assets/img_ads1.png'),
                  ),
                  SizedBox(width: 13),
                  AdsCard(
                    Ads(id: 2, imageUrl: 'assets/img_ads2.png'),
                  ),
                  SizedBox(width: edge),
                ],
              ),
            ),
//=========================================
// NOTE : KATEGORI CARD
// ========================================
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kategori',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lihat Semua',
                      style: purpleTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: edge),
                  CategoryCard(
                    Category(
                      id: 1,
                      name: 'Meja',
                      imageUrl: 'assets/icon_meja.png',
                    ),
                  ),
                  SizedBox(width: 36),
                  CategoryCard(
                    Category(
                      id: 2,
                      name: 'Kursi',
                      imageUrl: 'assets/icon_kursi.png',
                    ),
                  ),
                  SizedBox(width: 36),
                  CategoryCard(
                    Category(
                      id: 3,
                      name: 'Ranjang',
                      imageUrl: 'assets/icon_ranjang.png',
                    ),
                  ),
                  SizedBox(width: 36),
                  CategoryCard(
                    Category(
                      id: 3,
                      name: 'Sofa',
                      imageUrl: 'assets/icon_sofa.png',
                    ),
                  ),
                  SizedBox(width: 36),
                  CategoryCard(
                    Category(
                      id: 3,
                      name: 'Hiasan',
                      imageUrl: 'assets/icon_hiasan.png',
                    ),
                  ),
                  SizedBox(width: edge),
                ],
              ),
            ),
            SizedBox(height: 25),
            // ================================
            // PRODUK UNGGULAN CARD
            // ================================
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Produk Unggulan',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Lihat Semua',
                            style: purpleTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  SuperiorCard(),
                  SizedBox(height: edge),
                  SuperiorCard(),
                  SizedBox(height: edge),
                ],
              ),
            ),
// ======================
// ADS NGAJENG
// =======================
            SizedBox(height: 32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Container(
                height: 141,
                decoration: BoxDecoration(
                  color: Color(0xffEFF5FB),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ngajeng',
                          style: blackTextStyle.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Kursi santai yang dibuat dari\nbambu petung',
                          style: greyTextStyle.copyWith(fontSize: 10),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              'Belanja sekarang',
                              style: greyTextStyle.copyWith(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Image.asset('assets/icon_right.png',
                                width: 15, height: 15),
                          ],
                        ),
                      ],
                    ),
                    Image.asset('assets/img_ngajeng.png',
                        width: 150, height: 140),
                  ],
                ),
              ),
            ),
            SizedBox(height: 43),
//=========================
// NOTE : PENJUALAN TERBAIK
//=========================
            Container(
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Penjualan Terbaik',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Lihat Semua',
                            style: purpleTextStyle.copyWith(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                  BestProduct(),
                  SizedBox(height: edge),
                  BestProduct(),
                  SizedBox(height: edge),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
