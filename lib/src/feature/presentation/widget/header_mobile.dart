import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/common_widget/constant.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/section.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/site_portfolio_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Section(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: headerDecoration,
      child: Row(
        children: [
          SitePortfolioLogo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
              onPressed: onMenuTap,
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
          const SizedBox(
            width: 16,
          )
        ],
      ),
    );
  }
}
