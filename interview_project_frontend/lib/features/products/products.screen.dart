import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:interview_project_frontend/core/colors.dart';
import 'package:interview_project_frontend/features/products/models/product_list.dto.model.dart';
import 'package:interview_project_frontend/features/products/providers/products.provider.dart';

@RoutePage()
class ProductsTabScreen extends AutoRouter {
  const ProductsTabScreen({super.key});
}

@RoutePage()
class ProductsScreen extends HookConsumerWidget {
  const ProductsScreen({Key? key}) : super(key: key);
  static const _pageSize = 10;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() => {});
      return () => scrollController.removeListener(() => {});
    }, [scrollController]);

    final productList = ref.watch(productsProvider);
    return SafeArea(
      child: productList.when(
        data: (data) {
          if (data.isEmpty) {
            return _noItems(context);
          }
          return _body(context, products: data, scrollController: scrollController);
        },
        //handle error & loading states
        error: (error, stacktrace) => const SizedBox.shrink(),
        loading: () => const SizedBox.shrink(),
      ),
    );
  }

  Widget _noItems(BuildContext context) {
    return const SizedBox.shrink();
  }

  Widget _body(BuildContext context, {required List<ProductListDTO> products, required ScrollController scrollController}) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 362, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemCount: products.length,
      controller: scrollController,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        final product = products[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/${product.displayImagePath}",
              fit: BoxFit.cover,
              height: 270,
              alignment: Alignment.topRight,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 12, bottom: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "\$${product.price}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.priceColor,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "${product.userSatisfaction}% • ${product.leftInStock} left",
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
