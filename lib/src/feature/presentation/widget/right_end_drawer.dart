import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';
import 'package:my_portfolio_project/src/ultis/nav_items.dart';

class RightEndDrawer extends StatelessWidget {
  const RightEndDrawer({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: PortfolioColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close)),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              onTap: () {
                onNavItemTap(i);
              },
              leading: Icon(
                navIcons[i],
                color: PortfolioColor.whitePrimary,
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  navItems[i],
                  style: const TextStyle(
                      color: PortfolioColor.whitePrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ),
            )
        ],
      ),
    );
  }
}
