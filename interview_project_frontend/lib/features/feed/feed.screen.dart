import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class FeedTabScreen extends AutoRouter {
  const FeedTabScreen({super.key});
}

@RoutePage()
class FeedScreen extends HookConsumerWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SafeArea(
      child: Text("feed"),
    );
  }
}
