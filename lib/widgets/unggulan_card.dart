import 'package:flutter/material.dart';
import 'package:nyari_1/pages/detail_page.dart';
import 'package:nyari_1/pages/splash_page.dart';

import '../theme.dart';

class UnggulanCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: edge),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                ),
              );
            },
            child: Container(
              height: 242,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Image.asset('assets/img_product1.png', width: 150),
                  SizedBox(height: 6),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sedan',
                          style: blackTextStyle,
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Rp 5.280.000,00',
                          style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon_star.png',
                              width: 11,
                              height: 11,
                            ),
                            SizedBox(width: 6),
                            Text(
                              '4,5 | 105 Reviewers',
                              style: greyTextStyle.copyWith(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                ),
              );
            },
            child: Container(
              height: 242,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Image.asset('assets/img_product2.png', width: 150),
                  SizedBox(height: 6),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Singgah',
                          style: blackTextStyle,
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Rp 4.090.000,00',
                          style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon_star.png',
                              width: 11,
                              height: 11,
                            ),
                            SizedBox(width: 6),
                            Text(
                              '4,5 | 105 Reviewers',
                              style: greyTextStyle.copyWith(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
