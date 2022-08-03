import 'package:flutter/material.dart';
import 'package:nyari_1/model/category.dart';
import 'package:nyari_1/theme.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Color(0xffF1EDFC),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                category.imageUrl,
                width: 25,
                height: 25,
              ),
            ),
          ),
          SizedBox(height: 9),
          Text(
            category.name,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
