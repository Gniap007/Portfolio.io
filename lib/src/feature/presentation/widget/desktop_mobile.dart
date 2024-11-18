import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/section.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';

class DesktopMobile extends StatelessWidget {
  const DesktopMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final screenWidth = screenSize.width;
    return Section(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      //constraints: const BoxConstraints(minHeight: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                PortfolioColor.scaffoldBg.withOpacity(0.2),
                PortfolioColor.scaffoldBg.withOpacity(0.2)
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: SizedBox(
              width: screenWidth,
              height: 200,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Hi!\nI'm Swam Htet Paing\nA Flutter Developer",
            style: TextStyle(
                color: PortfolioColor.whitePrimary,
                fontSize: 20,
                height: 1.6,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 16,
          ),
          // const Text(
          //   "I am a dedicated Flutter developer with hands on experience in a german Flutter Agency \nMy expertise includes Flutter, Dart, State Managementwith Riverpod, and agile methodologies using Jira and Github. \nI'm also proficient in using design tools like Figma andenjoy collaborating with other developers. Currently, Iam seeking new opportunities in Chiang Mai or remote,where I can apply and further enhance my Flutter skills.",
          //   style: TextStyle(
          //       color: PortfolioColor.whitePrimary,
          //       fontSize: 18,
          //       height: 1.6,
          //       fontWeight: FontWeight.w400),
          // )
          const Text(
            "Email       - minswamhtetpaing@gmail.com \nLinkedin  - www.linkedin.com/in/swam-htet-paing08631 \nPhone      - +66 849864652",
            style: TextStyle(color: PortfolioColor.whitePrimary, fontSize: 14),
          )
        ],
      ),
    );
  }
}
