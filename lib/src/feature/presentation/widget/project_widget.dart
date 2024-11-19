import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/feature/domain/project_model.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class ProjectsWidget extends StatelessWidget {
  final List<ProjectModel> projects;

  const ProjectsWidget({super.key, required this.projects});

  // Function to launch the Flutter AI project link
  Future<void> _launchFlutterAi() async {
    final Uri url = Uri.parse(
        'https://drive.google.com/file/d/1-owwIKF-wA03oHbnUZqJ8Z8dgni5FoBe/view?usp=drive_link');

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Function to launch the EasyBooking project link
  Future<void> _launchEasyBooking() async {
    final Uri url = Uri.parse(
        'https://drive.google.com/file/d/1io5Vp-ahi_5nE71MD68LGQZUSs6J0XSI/view?usp=drive_link');

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: screenWidth,
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: PortfolioColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 20),
            ...projects.map(
              (project) => GestureDetector(
                onTap: () {
                  // Check which project is being tapped and launch the corresponding URL
                  if (project.title == 'Flutter AI') {
                    _launchFlutterAi(); // Launch the Flutter AI project link
                  } else if (project.title == 'Easy Booking') {
                    _launchEasyBooking(); // Launch the Easy Booking project link
                  }
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 320,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: PortfolioColor.bgLight2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20)),
                        child: Image.asset(
                          project.image,
                          height: 220,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          project.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: PortfolioColor.whitePrimary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        child: Text(
                          project.subtitle,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: PortfolioColor.whiteSecondary,
                          ),
                        ),
                      ),
                    ],
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
