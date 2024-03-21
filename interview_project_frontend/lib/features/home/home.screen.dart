import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:interview_project_frontend/core/colors.dart';
import 'package:interview_project_frontend/features/home/models/navbar_tabs.model.dart';

@RoutePage()
class HomeScreen extends StatefulHookConsumerWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: homeNavbarTabs().map((tab) => tab.route).toList(),
      bottomNavigationBuilder: (context, tabsRouter) => Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.navbarBorder,
              width: 0.5,
            ),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (int index) {
            tabsRouter.setActiveIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: AppColors.black,
          selectedLabelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.black),
          unselectedLabelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.black),
          items: homeNavbarTabs().map((tab) => tab.bottomNavigationBarItem).toList(),
        ),
      ),
    );
  }
}
