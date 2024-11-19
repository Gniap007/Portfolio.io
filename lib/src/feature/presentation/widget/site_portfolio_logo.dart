import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';

class SitePortfolioLogo extends StatelessWidget {
  const SitePortfolioLogo({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "Gniap",
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: PortfolioColor.whitePrimary),
      ),
    );
  }
}
