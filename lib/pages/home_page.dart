import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nyari_1/model/ads.dart';
import 'package:nyari_1/model/category.dart';
import 'package:nyari_1/theme.dart';
import 'package:nyari_1/widgets/ads_card.dart';
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
                    'Halo!',
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
          ],
        ),
      ),
    );
  }
}
