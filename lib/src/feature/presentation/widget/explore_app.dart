import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';
import 'package:url_launcher/url_launcher.dart';

class ExploreApp extends StatelessWidget {
  const ExploreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: _launchEasyBooking,
          child: Container(
            width: 160,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: PortfolioColor.bgLight2,
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
            child: const Text(
              "Explore to EasyBooking",
              style:
                  TextStyle(fontSize: 12, color: PortfolioColor.whitePrimary),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(width: 16), // Adds space between the containers
        GestureDetector(
          onTap: _launchFlutterAi,
          child: Container(
            width: 160,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: PortfolioColor.bgLight2,
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
            child: const Text(
              "Explore to Flutter Ai",
              style:
                  TextStyle(fontSize: 12, color: PortfolioColor.whitePrimary),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

Future<void> _launchFlutterAi() async {
  final Uri url = Uri.parse(
      'https://drive.google.com/file/d/1-owwIKF-wA03oHbnUZqJ8Z8dgni5FoBe/view?usp=drive_link');

  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchEasyBooking() async {
  final Uri url = Uri.parse(
      'https://drive.google.com/file/d/1io5Vp-ahi_5nE71MD68LGQZUSs6J0XSI/view?usp=drive_link');

  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
