import { IsMongoId } from 'class-validator';

export class GetProductParamInput {
  @IsMongoId()
  productId: string;
}
