import 'package:flutter/material.dart';
import 'package:my_portfolio_project/src/common_widget/break_point.dart';
import 'package:my_portfolio_project/src/feature/domain/project_model.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/about_me.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/desktop.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/desktop_mobile.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/explore_app.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/header.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/header_mobile.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/project_mobile.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/project_widget.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/right_end_drawer.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/section.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/skill_platform.dart';
import 'package:my_portfolio_project/src/feature/presentation/widget/skill_platform_mobile.dart';
import 'package:my_portfolio_project/src/ultis/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<ProjectModel> myProjects = [
  const ProjectModel(
    image: 'assets/images/easy.png',
    title: 'Easy Booking',
    subtitle: 'For Small Business Financial Case',
  ),
  const ProjectModel(
    image: 'assets/images/fluttera.png',
    title: 'Flutter AI',
    subtitle: 'ChatGPT For Flutter',
  ),
];

class _HomePageState extends State<HomePage> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarkeys = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    //final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    return LayoutBuilder(
      builder: (context, raints) => Scaffold(
        key: scaffoldkey,
        backgroundColor: PortfolioColor.scaffoldBg,
        endDrawer: raints.maxWidth >= BreakPoint.desktop
            ? null
            : RightEndDrawer(
                onNavItemTap: (int navIndex) {
                  scaffoldkey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                },
              ),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                key: navbarkeys.first,
              ),
              if (raints.maxWidth >= BreakPoint.desktop)
                Header(
                  onNavMenuTap: (int navIndex) {
                    scrollToSection(navIndex);
                  },
                )
              else
                HeaderMobile(
                  onMenuTap: () {
                    scaffoldkey.currentState?.openEndDrawer();
                  },
                ),
              if (raints.maxWidth >= BreakPoint.desktop)
                const Desktop()
              else
                const DesktopMobile(),
              Section(
                  key: navbarkeys[1],
                  color: PortfolioColor.bgLight1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 20, 24, 60),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Platforms and Skills",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: PortfolioColor.whitePrimary),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        if (raints.maxWidth >= BreakPoint.desktop)
                          const SkillPlatform()
                        else
                          const SkillPlatformMobile()
                      ],
                    ),
                  )),
              Container(
                key: navbarkeys[2],
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(24, 20, 24, 60),
                child: Column(
                  children: [
                    if (raints.maxWidth >= BreakPoint.minidesktop)
                      ProjectMobile(
                        projects: myProjects,
                      )
                    else
                      ProjectsWidget(projects: myProjects)
                  ],
                ),
              ),
              const ExploreApp(),
              AboutMe(
                key: navbarkeys[3],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex >= navbarkeys.length) {
      return; // Exit if navIndex is out of bounds
    }
    final key = navbarkeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
