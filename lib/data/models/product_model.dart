import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required List<String> tags,
    required String sku,
    required int weight,
    required ProductModelDimensions dimensions,
    required String warrantyInformation,
    required String shippingInformation,
    required String availabilityStatus,
    required List<ProductModelReviews> reviews,
    required String returnPolicy,
    required int minimumOrderQuantity,
    required ProductModelMeta meta,
    required List<String> images,
    required String thumbnail,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ProductModelDimensions with _$ProductModelDimensions {
  const factory ProductModelDimensions({
    required double width,
    required double height,
    required double depth,
  }) = _ProductModelDimensions;

  factory ProductModelDimensions.fromJson(Map<String, dynamic> json) =>
      _$ProductModelDimensionsFromJson(json);
}

@freezed
class ProductModelReviews with _$ProductModelReviews {
  const factory ProductModelReviews({
    required int rating,
    required String comment,
    required String date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _ProductModelReviews;

  factory ProductModelReviews.fromJson(Map<String, dynamic> json) =>
      _$ProductModelReviewsFromJson(json);
}

@freezed
class ProductModelMeta with _$ProductModelMeta {
  const factory ProductModelMeta({
    required String createdAt,
    required String updatedAt,
    required String barcode,
    required String qrCode,
  }) = _ProductModelMeta;

  factory ProductModelMeta.fromJson(Map<String, dynamic> json) =>
      _$ProductModelMetaFromJson(json);
}

FutureOr<ProductModel> deserializeProductModel(Map<String, dynamic> json) =>
    ProductModel.fromJson(json);

FutureOr<ProductModelDimensions> deserializeProductModelDimensions(
        Map<String, dynamic> json) =>
    ProductModelDimensions.fromJson(json);

FutureOr<ProductModelReviews> deserializeProductModelReviews(
        Map<String, dynamic> json) =>
    ProductModelReviews.fromJson(json);

FutureOr<ProductModelMeta> deserializeProductModelMeta(
        Map<String, dynamic> json) =>
    ProductModelMeta.fromJson(json);
