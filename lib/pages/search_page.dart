import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nyari_1/theme.dart';

class SearchPage extends StatelessWidget {
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
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(CupertinoIcons.back)),
                  Text(
                    'Pencarian',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.cart),
                  ),
                ],
              ),
            ),
            // ====================================
            // NOTE : SEARCH BAR
            // ====================================
            SizedBox(height: 26),
            InkWell(
              onTap: () {},
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // ===============================
            // NOTE : PENCARIAN TERAKHIR
            // ===============================
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'Terakhir Dicari',
                style: blackTextStyle,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icon_clock_grey.png',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Meja',
                        style: blackTextStyle.copyWith(fontSize: 14),
                      ),
                      // IconButton(
                      //     onPressed: () {}, icon: Icon(CupertinoIcons.xmark))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icon_clock_grey.png',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Colokan',
                        style: blackTextStyle.copyWith(fontSize: 14),
                      ),
                      // IconButton(
                      //     onPressed: () {}, icon: Icon(CupertinoIcons.xmark))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icon_clock_grey.png',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lemari',
                        style: blackTextStyle.copyWith(fontSize: 14),
                      ),
                      // IconButton(
                      //     onPressed: () {}, icon: Icon(CupertinoIcons.xmark))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
