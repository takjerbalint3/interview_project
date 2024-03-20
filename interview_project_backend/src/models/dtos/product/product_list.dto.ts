import { Exclude, Expose } from 'class-transformer';
import { Types } from 'mongoose';
import { Product } from 'src/models/schemas/product/product.schema';

@Exclude()
export class ProductListDTO implements Product {
  @Expose()
  _id: Types.ObjectId;

  @Expose()
  name: string;

  @Expose()
  price: number;

  @Expose()
  leftInStock: number;

  @Expose()
  userSatisfaction: number;

  @Expose()
  displayImagePath: string;

  description: string;
  connectedImagePaths: string[];
}
