import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/feature/domain/project_model.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';

class ProjectMobile extends StatelessWidget {
  final List<ProjectModel> projects;

  const ProjectMobile({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Projects",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: PortfolioColor.whitePrimary,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              ...projects.map(
                (project) => Padding(
                  padding: const EdgeInsets.all(20.0),
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
                              horizontal: 16, vertical: 10),
                          child: Text(
                            project.subtitle,
                            style: const TextStyle(
                              fontSize: 12,
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
        ],
      ),
    );
  }
}
