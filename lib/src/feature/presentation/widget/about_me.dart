import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.maxFinite,
        color: PortfolioColor.bgLight1,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "About Me",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: PortfolioColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "I am a dedicated  Flutter developer with hands-on experience in a German Flutter agency. "
                  "My expertise includes Flutter, Dart, State Management with Riverpod, and agile methodologies using Jira and GitHub. "
                  "I'm also proficient in using design tools like Figma and enjoy collaborating with other developers. "
                  "Currently, I am seeking new opportunities in Chiang Mai or remote, where I can apply and further enhance my Flutter skills.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: PortfolioColor.whiteSecondary,
                    height: 1.5, // Improves readability
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
