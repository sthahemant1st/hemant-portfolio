import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hemant_portfolio/res/colors.dart';

import '../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: AspectRatio(
              aspectRatio: 3,
              child: Image.asset(
                "assets/images/background.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: AppColors.darkColor.withOpacity(0.36),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Expanded(
              child: Text(
                introText,
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
