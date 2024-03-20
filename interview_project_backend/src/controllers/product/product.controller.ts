import { Body, Controller, Get, Param, Post } from '@nestjs/common';
import { ProductListDTO } from 'src/models/dtos/product/product_list.dto';
import { GetProductParamInput } from 'src/models/input_validation/product/get_product.param.input';
import { PaginateProductListPayloadInput } from 'src/models/input_validation/product/paginate_product_list_payload.input';
import { Product } from 'src/models/schemas/product/product.schema';
import { ProductService } from 'src/services/product/product.service';

@Controller('product')
export class ProductController {
  constructor(private productService: ProductService) {}

  @Get('/:productId')
  getProduct(@Param() params: GetProductParamInput): Product {
    return this.productService.getProduct(params);
  }

  @Post('/paginate')
  paginateProductList(
    @Body() body: PaginateProductListPayloadInput,
  ): ProductListDTO[] {
    return this.productService.paginateProductList(body);
  }
}
