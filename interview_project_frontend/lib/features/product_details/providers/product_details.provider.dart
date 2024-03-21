import 'package:flutter/material.dart';
import 'package:interview_project_frontend/features/api/backend/providers/client_provider/client_provider.dart';
import 'package:interview_project_frontend/features/product_details/models/product.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_details.provider.g.dart';

@riverpod
Future<Product> productDetails(ProductDetailsRef ref, {required String productId}) async {
  final apiClient = ref.read(
    apiClientProvider(
      onError: (e, handler) {
        //COULD DO SOME CUSTOM ERROR HANDLING + SNACK MESSAGE
        debugPrint(e.message);
      },
    ),
  );

  final product = await apiClient.getProduct(productId: productId);
  return product;
}
