import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      // color: AppColors.primaryVariantColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipOval(
            child: Image.asset(
              "assets/images/hemant.JPG",
              height: 100,
              fit: BoxFit.cover,
              width: 100,
            ),
          ),
          const SizedBox(
            height: 8,
            width: double.infinity,
          ),
          Text(
            "Hemant Shrestha",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: 8),
          const Text(
            "Android and Flutter Developer",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            "Computer Engineer",
          ),
        ],
      ),
    );
  }
}
