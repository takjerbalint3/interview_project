import { Injectable, NotFoundException } from '@nestjs/common';
import { plainToInstance } from 'class-transformer';
import { Types } from 'mongoose';
import { ProductListDTO } from 'src/models/dtos/product/product_list.dto';
import { GetProductParamInput } from 'src/models/input_validation/product/get_product.param.input';
import { PaginateProductListPayloadInput } from 'src/models/input_validation/product/paginate_product_list_payload.input';
import { Product } from 'src/models/schemas/product/product.schema';

@Injectable()
export class ProductService {
  products: Product[];
  constructor() {
    this.products = this.initializeProducts();
  }
  paginateProductList({
    page,
    limit,
  }: PaginateProductListPayloadInput): ProductListDTO[] {
    const startIndex = (page - 1) * limit;
    const endIndex = page * limit;

    const paginatedProducts = this.products.slice(startIndex, endIndex);

    return plainToInstance(ProductListDTO, paginatedProducts);
  }

  getProduct({ productId }: GetProductParamInput): Product {
    const product = this.products.find(
      (product) => product._id.toString() === productId,
    );

    if (!product) {
      throw new NotFoundException('error.product_does_not_exist');
    }

    return product;
  }

  initializeProducts(): Product[] {
    const products: Product[] = [];

    for (let i = 0; i < 35; i++) {
      const id = new Types.ObjectId();
      const product = new Product(
        id,
        'iPhone 7',
        `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.`,
        549,
        128,
        94,
        ['iphone.png', 'iphone.png', 'iphone.png'],
        'iphone.png',
      );

      products.push(product);
    }

    return products;
  }
}
