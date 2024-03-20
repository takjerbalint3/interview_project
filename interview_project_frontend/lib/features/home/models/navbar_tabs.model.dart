import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
        bottomNavigationBarItem: const BottomNavigationBarItem(icon: Icon(Icons.auto_stories), label: "Feed"),
      ),
      NavbarTabs(
        route: const ProductsTabRoute(
          children: [
            ProductsRoute(),
          ],
        ),
        bottomNavigationBarItem: const BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: "Products"),
      ),
      NavbarTabs(
        route: const ProfileTabRoute(
          children: [
            ProfileRoute(),
          ],
        ),
        bottomNavigationBarItem: const BottomNavigationBarItem(icon: Icon(Icons.info), label: "Profile"),
      ),
    ];
