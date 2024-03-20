import { Types } from 'mongoose';

export class Product {
  _id: Types.ObjectId;
  name: string;
  description: string;
  price: number;
  leftInStock: number;
  userSatisfaction: number;
  connectedImagePaths: string[];
  displayImagePath: string;

  constructor(
    _id: Types.ObjectId,
    name: string,
    description: string,
    price: number,
    leftInStock: number,
    userSatisfaction: number,
    connectedImagePaths: string[],
    displayImagePath: string,
  ) {
    this._id = _id;
    this.name = name;
    this.description = description;
    this.price = price;
    this.leftInStock = leftInStock;
    this.userSatisfaction = userSatisfaction;
    this.connectedImagePaths = connectedImagePaths;
    this.displayImagePath = displayImagePath;
  }
}
