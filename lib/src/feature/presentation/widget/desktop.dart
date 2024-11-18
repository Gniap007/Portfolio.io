import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/section.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final screenWidth = screenSize.width;
    return Section(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      // height: screenSize.height / 1.2,
      constraints: const BoxConstraints(minHeight: 400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hi!\nI'm Swam Htet Paing\nA Flutter Developer",
                style:
                    TextStyle(color: PortfolioColor.whitePrimary, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Email       - minswamhtetpaing@gmail.com \nLinkedin  - www.linkedin.com/in/swam-htet-paing08631 \nPhone      - +66 849864652",
                style:
                    TextStyle(color: PortfolioColor.whitePrimary, fontSize: 14),
              )
              // style:
              //     TextStyle(color: PortfolioColor.whitePrimary, fontSize: 16),
            ],
          ),
          SizedBox(
            width: 400,
            child: Image.asset(
              'assets/images/logo.png',
              width: screenWidth / 2,
            ),
          )
        ],
      ),
    );
  }
}
