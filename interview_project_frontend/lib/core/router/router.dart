import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:interview_project_frontend/features/feed/feed.screen.dart';
import 'package:interview_project_frontend/features/home/home.screen.dart';
import 'package:interview_project_frontend/features/product_details/product_details.screen.dart';
import 'package:interview_project_frontend/features/products/products.screen.dart';
import 'package:interview_project_frontend/features/profile/profile.screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: [
            AutoRoute(
              page: ProductsTabRoute.page,
              path: '',
              children: [
                AutoRoute(page: ProductsRoute.page, path: ''),
              ],
            ),
            AutoRoute(
              page: FeedTabRoute.page,
              path: 'feed',
              children: [
                AutoRoute(page: FeedRoute.page, path: ''),
              ],
            ),
            AutoRoute(
              page: ProfileTabRoute.page,
              path: 'profile',
              children: [
                AutoRoute(page: ProfileRoute.page, path: ''),
              ],
            )
          ],
        )
      ];
}
