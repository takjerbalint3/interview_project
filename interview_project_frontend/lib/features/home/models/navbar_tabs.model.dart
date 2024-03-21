import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:interview_project_frontend/core/colors.dart';
import 'package:interview_project_frontend/core/router/router.dart';

class NavbarTabs {
  final PageRouteInfo<dynamic> route;
  final BottomNavigationBarItem bottomNavigationBarItem;

  NavbarTabs({required this.route, required this.bottomNavigationBarItem});
}

List<NavbarTabs> homeNavbarTabs() => [
      NavbarTabs(
        route: const FeedTabRoute(
          children: [
            FeedRoute(),
          ],
        ),
        bottomNavigationBarItem: const BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: AppColors.black,
          ),
          label: "Feed",
        ),
      ),
      NavbarTabs(
        route: const ProductsTabRoute(
          children: [
            ProductsRoute(),
          ],
        ),
        bottomNavigationBarItem: const BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag,
            color: AppColors.black,
            fill: 1,
          ),
          label: "Products",
        ),
      ),
      NavbarTabs(
        route: const ProfileTabRoute(
          children: [
            ProfileRoute(),
          ],
        ),
        bottomNavigationBarItem: const BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: AppColors.black,
            fill: 1,
            size: 24,
          ),
          label: "Profile",
        ),
      ),
    ];
