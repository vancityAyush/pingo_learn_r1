import 'dart:async';

import 'package:json_annotation/json_annotation.dart';
import 'package:pingo_learn_r1/data/models/product_model.dart';

part 'products_response.g.dart';

@JsonSerializable()
class ProductsResponse {
  final List<ProductModel> products;
  final int total;
  final int skip;
  final int limit;

  ProductsResponse(this.products, this.total, this.skip, this.limit);

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsResponseToJson(this);
}

FutureOr<ProductsResponse> deserializeProductsResponse(
        Map<String, dynamic> json) =>
    ProductsResponse.fromJson(json);
