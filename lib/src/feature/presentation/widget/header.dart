import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/common_widget/constant.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/section.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/site_portfolio_logo.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';
import 'package:my_portfolio_project/src/ultis/nav_items.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;
  @override
  Widget build(BuildContext context) {
    return Section(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      borderRadius: BorderRadius.circular(100),
      decoration: headerDecoration,
      color: Colors.white,
      height: 60,
      child: Row(
        children: [
          SitePortfolioLogo(onTap: () {}),
          const Spacer(),
          for (int i = 0; i < navItems.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {
                  onNavMenuTap(i);
                },
                child: Text(
                  navItems[i],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: PortfolioColor.whitePrimary),
                ),
              ),
            )
        ],
      ),
    );
  }
}
