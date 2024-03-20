import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen({Key? key, required this.productId}) : super(key: key);
  final String productId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Text("Product details");
  }
}
