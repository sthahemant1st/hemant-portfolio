import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hemant_portfolio/constants.dart';
import 'package:hemant_portfolio/res/colors.dart';
import 'package:hemant_portfolio/responsive.dart';
import 'package:hemant_portfolio/widgets/main_body.dart';
import 'package:hemant_portfolio/widgets/side_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hemant Shrestha",
      theme: ThemeData.dark().copyWith(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.bgColor,
        canvasColor: AppColors.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: AppColors.bodyTextColor),
              bodyText2: TextStyle(color: AppColors.bodyTextColor),
            ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  static const List<String> techNames = [
    "Android (kotlin)",
    "Jetpack Compose",
    "Flutter (Dart)",
    "Firebase",
    "Google Maps",
    "Git and GitHub)"
  ];

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)? null : AppBar(
        backgroundColor: AppColors.bgColor,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            );
          }
        ),
      ),
      drawer: const SideMenu(),
      body: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        color: AppColors.primaryColor,
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),
            const Expanded(
              flex: 7,
              child: MainBody(),
            ),
            // techNames.map((e) => Text(e)).toList()
          ],
        ),
      ),
    );
  }
}
