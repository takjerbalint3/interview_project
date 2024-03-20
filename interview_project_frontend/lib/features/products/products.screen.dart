import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProductsTabScreen extends AutoRouter {
  const ProductsTabScreen({super.key});
}

@RoutePage()
class ProductsScreen extends HookConsumerWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Text("PRODUCTS");
  }
}
