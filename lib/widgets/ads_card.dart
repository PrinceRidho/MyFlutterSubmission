import 'package:flutter/material.dart';

import '../model/ads.dart';

class AdsCard extends StatelessWidget {
  final Ads ads;

  AdsCard(this.ads);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: 253,
      child: Image.asset(ads.imageUrl),
    );
  }
}
