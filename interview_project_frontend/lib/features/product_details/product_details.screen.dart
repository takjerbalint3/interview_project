import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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
    final productDetails = ref.watch(productDetailsProvider(productId: productId));
    return SafeArea(
      child: productDetails.when(
        data: (data) {
          return _body(context, product: data);
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

  Widget _body(BuildContext context, {required Product product}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _productImage(context, imagePath: product.displayImagePath),
          _productInformation(context, product: product),
        ],
      ),
    );
  }

  Widget _productImage(BuildContext context, {required String imagePath}) {
    return Image.asset("assets/images/$imagePath");
  }

  Widget _productInformation(BuildContext context, {required Product product}) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle(context, title: "Description"),
          const SizedBox(
            height: 12,
          ),
          _productDescription(context, description: product.description),
          const SizedBox(
            height: 12,
          ),
          _sectionTitle(context, title: "Images"),
          const SizedBox(
            height: 12,
          ),
          _connectedImages(context, connectedImagePaths: product.connectedImagePaths),
        ],
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, {required String title}) {
    return Text(
      title,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    );
  }

  Widget _productDescription(BuildContext context, {required String description}) {
    return Text(
      description,
      softWrap: true,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }

  Widget _connectedImages(BuildContext context, {required List<String> connectedImagePaths}) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: connectedImagePaths.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final connectedImagePath = connectedImagePaths[index];
          return Container(
            width: 200,
            height: 200,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            margin: index == connectedImagePaths.length - 1 ? EdgeInsets.zero : const EdgeInsets.only(right: 20),
            child: Image.asset(
              "assets/images/$connectedImagePath",
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
