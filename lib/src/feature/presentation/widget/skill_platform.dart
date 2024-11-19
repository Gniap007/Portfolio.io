import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/common_widget/skill_items.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';

class SkillPlatform extends StatelessWidget {
  const SkillPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxWidth: 450,
                            ),
                            child: Wrap(
                              spacing: 6,
                              runSpacing: 6,
                              children: [
                                for (int i = 0; i < platformItems.length; i++)
                                  Container(
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: PortfolioColor.bgLight2,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: ListTile(
                                      contentPadding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      leading: Image.asset(
                                        platformItems[i]["img"],
                                        width: 32,
                                      ),
                                      title: Text(
                                        platformItems[i]["title"],
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color: PortfolioColor.whitePrimary),
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          Flexible(
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                maxWidth: 500,
                              ),
                              child: Wrap(
                                spacing: 10,
                                runSpacing: 10,
                                children: [
                                  for (int i = 0; i < skillItems.length; i++)
                                    Chip(
                                      backgroundColor: PortfolioColor.bgLight2,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 12),
                                      label: Text(
                                        skillItems[i]["title"],
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color: PortfolioColor.whitePrimary),
                                      ),
                                      avatar: Image.asset(skillItems[i]["img"]),
                                    )
                                ],
                              ),
                            ),
                          )
                        ],
                      );
  }
}