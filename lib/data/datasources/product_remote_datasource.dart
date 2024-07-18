import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pingo_learn_r1/data/models/products_response.dart';
import 'package:retrofit/retrofit.dart';

part 'product_remote_datasource.g.dart';

@RestApi(
  baseUrl: "https://dummyjson.com",
  parser: Parser.FlutterCompute,
)
abstract class DummyJsonRemoteDataSource {
  factory DummyJsonRemoteDataSource(Dio dio, {String baseUrl}) =
      _DummyJsonRemoteDataSource;

  @GET("/products")
  Future<ProductsResponse> fetchProducts({
    @Query("skip") int? skip,
    @Query("limit") int? limit,
  });
}
