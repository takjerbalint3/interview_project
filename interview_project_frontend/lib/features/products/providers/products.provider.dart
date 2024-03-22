import 'package:flutter/material.dart';
import 'package:interview_project_frontend/features/api/backend/client/client.dart';
import 'package:interview_project_frontend/features/api/backend/providers/client_provider/client_provider.dart';
import 'package:interview_project_frontend/features/products/models/paginate_product_list_payload.dto.model.dart';
import 'package:interview_project_frontend/features/products/models/product_list.dto.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'products.provider.g.dart';

@riverpod
class Products extends _$Products {
  ApiClient get apiClient => ref.read(
        apiClientProvider(
          onError: (e, handler) {
            //COULD DO SOME CUSTOM ERROR HANDLING + SNACK MESSAGE
            debugPrint(e.message);
          },
        ),
      );
  //Could add limit as a parameter in the future
  @override
  Future<List<ProductListDTO>> build() async {
    final productList = await apiClient.pagineProductList(paginateProductListPayloadDto: const PaginateProductListPayloadDTO(page: 1, limit: 10));
    return productList;
  }

  //Could add limit as a parameter in the future
  Future<int> loadNextPage({required num page}) async {
    final productsOnNextPage = await apiClient.pagineProductList(paginateProductListPayloadDto: PaginateProductListPayloadDTO(page: page, limit: 10));
    update((previousState) => [...previousState, ...productsOnNextPage]);
    return productsOnNextPage.length;
  }
}
