import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hemant_portfolio/widgets/profile.dart';
import 'package:hemant_portfolio/widgets/technology_item.dart';
import 'package:hemant_portfolio/widgets/title_value_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Profile(),
            const Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    TitleValueWidget(
                        title: "Address", value: "Dhapakhel, Lalitpur"),
                    SizedBox(height: 8),
                    TitleValueWidget(
                        title: "Email", value: "sthahemant1st@gmail.com"),
                    SizedBox(height: 8),
                    SizedBox(height: 8),
                    Divider(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Recent Technologies Used:",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: 16),
                    TechnologyItem(techName: "Android (kotlin)"),
                    SizedBox(height: 8),
                    TechnologyItem(techName: "Jetpack Compose"),
                    SizedBox(height: 8),
                    TechnologyItem(techName: "Flutter (Dart)"),
                    SizedBox(height: 8),
                    TechnologyItem(techName: "Firebase"),
                    SizedBox(height: 8),
                    TechnologyItem(techName: "Google Maps"),
                    SizedBox(height: 8),
                    TechnologyItem(techName: "Git and GitHub)"),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _launchInBrowser("https://www.linkedin.com/in/hemant-shrestha-088ab1178/");
                  },
                  icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                ),
                IconButton(
                  onPressed: () {
                    _launchInBrowser("https://github.com/sthahemant1st");
                  },
                  icon: SvgPicture.asset("assets/icons/github.svg"),
                ),
                IconButton(
                  onPressed: () {
                    _launchInBrowser("https://twitter.com/HemantS53419636");
                  },
                  icon: SvgPicture.asset("assets/icons/twitter.svg"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchInBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
