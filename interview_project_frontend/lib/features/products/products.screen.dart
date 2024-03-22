import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:interview_project_frontend/components/ui_state_widgets.dart';
import 'package:interview_project_frontend/core/colors.dart';
import 'package:interview_project_frontend/core/router/router.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: _pageTitle(context),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: AppColors.navbarBorder,
            height: 0.5,
          ),
        ),
      ),
      body: SafeArea(
        child: productList.when(
          data: (data) {
            if (data.isEmpty) {
              return _noItems(context);
            }
            return _body(context, products: data, scrollController: scrollController);
          },
          //handle error & loading states
          error: (error, stacktrace) {
            if (productList.hasValue) {
              //TODO show error message in snack message

              return _body(context, products: productList.value!, scrollController: scrollController);
            }
            return errorWidget(context, error: error as DioException, defaultErrorMessage: "Error loading products");
          },
          loading: () {
            if (productList.hasValue) {
              return _body(context, products: productList.value!, scrollController: scrollController);
            }
            return loading(context);
          },
        ),
      ),
    );
  }

  Widget _pageTitle(BuildContext context) {
    return const Text(
      "Products",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    );
  }

  Widget _noItems(BuildContext context) {
    return const Center(
      child: Text("No products found"),
    );
  }

  Widget _body(BuildContext context, {required List<ProductListDTO> products, required ScrollController scrollController}) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 362, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemCount: products.length,
      controller: scrollController,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(top: 12),
      itemBuilder: (context, index) {
        final product = products[index];

        return _productCard(context, product: product);
      },
    );
  }

  Widget _productCard(BuildContext context, {required ProductListDTO product}) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      child: InkWell(
        onTap: () {
          context.router.push(ProductDetailsRoute(productId: product.id));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _productImage(context, imagePath: product.displayImagePath),
            _productDetails(context, product: product),
          ],
        ),
      ),
    );
  }

  Widget _productImage(BuildContext context, {required String imagePath}) {
    return Image.asset(
      "assets/images/$imagePath",
      fit: BoxFit.cover,
      height: 270,
      alignment: Alignment.topRight,
    );
  }

  Widget _productDetails(BuildContext context, {required ProductListDTO product}) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 12, bottom: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(context, title: product.name),
          _price(context, price: product.price),
          const SizedBox(
            height: 4,
          ),
          _satisfactionAndStockInfo(context, userSatisfaction: product.userSatisfaction, leftInStock: product.leftInStock),
        ],
      ),
    );
  }

  Widget _title(BuildContext context, {required String title}) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _price(BuildContext context, {required num price}) {
    return Text(
      "\$$price",
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.priceColor,
      ),
    );
  }

  Widget _satisfactionAndStockInfo(BuildContext context, {required num userSatisfaction, required num leftInStock}) {
    return Text(
      "$userSatisfaction% • $leftInStock left",
      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
    );
  }
}
