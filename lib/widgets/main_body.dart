import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hemant_portfolio/res/colors.dart';
import 'package:hemant_portfolio/widgets/banner.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeBanner(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              color: AppColors.bgColor,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.smartphone),
                      const SizedBox(width: 16),
                      Text(
                        "Projects",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const AppDetailsItem(
                    name: "Service Provider And Ride Sharing App",
                    appDetail:
                        "It is a service provider app where you can hire highly trusted background verified"
                        " professionals to get all kinds of home services and ride sharing app where you "
                        "can travel safely and reach destination on time. Some services are  electrical, plumbing,"
                        " appliances repairing, painting, laundry, room shifting, vehicle rental, couriers with the"
                        " fastest delivery.This app ensures that you get the best service with flexible pricing, on-time services,"
                        " and service guarantee. ",
                    techDetail:
                        "Kotlin, Jetpack Compose, MVVM architecture, Google Maps, Rest Api, WebSocets,"
                        " FCM(Firebase Cloud Messaging) and other firebase services, Dependency Injection (Koin), "
                        "Shared Preferences, Live Data, Coroutines, and different third party libraries.",
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const AppDetailsItem(
                    name: "Quiz App",
                    appDetail: "It is MCQ questions based adaptive skill assessment app. Identifies your gaps"
                        " and strengths on a granular level. Users can take the assessments periodically, track their "
                        "progress, and improve continuously. Other analytics such as percentile score and accuracy score "
                        "are provided as well.",
                    techDetail: "Kotlin, Jetpack Compose, MVVM architecture, Rest Api,"
                        " FCM(Firebase Cloud Messaging) and other firebase services, Dependency Injection (Koin), "
                        "Shared Preferences, Live Data, Coroutines, and different third party libraries.",
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const AppDetailsItem(
                    name: "Learning App",
                    appDetail: "It is also an MCQ app but has additional features like learning video streaming, video download.",
                    techDetail: "Futter, Provider for state management, Getit for Dependency Injection, Alice as Network Interceptor,"
                        "  Media player, File Downloader, Shared Preferences, Firebase, Retrofit and other third party libraries",
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

class AppDetailsItem extends StatelessWidget {
  final String name, appDetail, techDetail;

  const AppDetailsItem(
      {Key? key,
      required this.name,
      required this.appDetail,
      required this.techDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: Theme.of(context).textTheme.subtitle1),
        const SizedBox(height: 8),
        Text(appDetail, textAlign: TextAlign.justify),
        const SizedBox(height: 8),
        const Text(
          "Technology used:",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(techDetail, textAlign: TextAlign.justify)
      ],
    );
  }
}
