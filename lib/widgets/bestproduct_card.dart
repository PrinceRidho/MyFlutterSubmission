import 'package:flutter/material.dart';

import '../pages/detail_page.dart';
import '../theme.dart';

class BestProduct extends StatelessWidget {
  const BestProduct({Key? key}) : super(key: key);

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
                  Image.asset('assets/img_bestproduct1.png', width: 150),
                  SizedBox(height: 6),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tiwi',
                          style: blackTextStyle,
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Rp 3.920.000,00',
                          style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Rp 4.620.000,00',
                            style: greyTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        SizedBox(height: 12),
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
                  Image.asset('assets/img_bestproduct2.png', width: 150),
                  SizedBox(height: 6),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jengkih',
                          style: blackTextStyle,
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Rp 3.060.000,00',
                          style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Rp 4.620.000,00',
                            style: greyTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        SizedBox(height: 12),
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
