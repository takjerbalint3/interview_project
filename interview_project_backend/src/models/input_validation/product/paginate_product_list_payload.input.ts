import { IsNumber } from 'class-validator';

export class PaginateProductListPayloadInput {
  @IsNumber()
  page: number;

  @IsNumber()
  limit: number;
}
