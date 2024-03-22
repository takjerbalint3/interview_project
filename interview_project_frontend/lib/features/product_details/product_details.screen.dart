import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:interview_project_frontend/components/ui_state_widgets.dart';
import 'package:interview_project_frontend/features/product_details/models/product.model.dart';
import 'package:interview_project_frontend/features/product_details/providers/product_details.provider.dart';

@RoutePage()
class ProductDetailsScreen extends HookConsumerWidget {
  const ProductDetailsScreen({Key? key, @PathParam("productId") required this.productId}) : super(key: key);
  final String productId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final productDetails = ref.watch(productDetailsProvider(productId: productId));
    return SafeArea(
      child: productDetails.when(
        data: (data) {
          return _body(context, product: data, scrollController: scrollController);
        },
        //handle error & loading states
        error: (error, stacktrace) {
          return errorWidget(context, error: error as DioException, defaultErrorMessage: "Couldn't find product");
        },
        loading: () {
          return loading(context);
        },
      ),
    );
  }

  Widget _body(BuildContext context, {required Product product, required ScrollController scrollController}) {
    return Text(product.name);
  }
}
