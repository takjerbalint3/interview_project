import 'package:dio/dio.dart';
import 'package:interview_project_frontend/features/login/models/login.dto.model.dart';
import 'package:interview_project_frontend/features/product_details/models/product.model.dart';
import 'package:interview_project_frontend/features/products/models/paginate_product_list_payload.dto.model.dart';
import 'package:interview_project_frontend/features/products/models/product_list.dto.model.dart';
import 'package:retrofit/retrofit.dart';

part 'client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('/product/paginate')
  Future<List<ProductListDTO>> pagineProductList({
    @Body() required PaginateProductListPayloadDTO paginateProductListPayloadDto,
  });

  @GET('/product/{productId}')
  Future<Product> getProduct({
    @Path() required String productId,
  });

  @POST('/auth/login')
  Future<String> login({@Body() required LoginDto loginDto});
}
