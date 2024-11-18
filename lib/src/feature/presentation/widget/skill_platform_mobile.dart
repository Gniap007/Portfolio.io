import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/common_widget/skill_items.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/section.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';

class SkillPlatformMobile extends StatelessWidget {
  const SkillPlatformMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                Section(
                  margin: const EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                      color: PortfolioColor.bgLight2,
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    leading: Image.asset(
                      platformItems[i]["img"],
                      width: 32,
                    ),
                    title: Text(
                      platformItems[i]["title"],
                      style: const TextStyle(
                          fontSize: 16, color: PortfolioColor.whitePrimary),
                    ),
                  ),
                ),
              ],
            ),
          const SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  backgroundColor: PortfolioColor.bgLight2,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  label: Text(
                    skillItems[i]["title"],
                    style: const TextStyle(
                        fontSize: 16, color: PortfolioColor.whitePrimary),
                  ),
                  avatar: Image.asset(skillItems[i]["img"]),
                )
            ],
          )
        ],
      ),
    );
  }
}
