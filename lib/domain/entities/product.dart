import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pingo_learn_r1/data/models/product_model.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required String description,
    required num price,
    required num discountPercentage,
    required num discountedPrice,
    required String thumbnail,
  }) = _Product;

  factory Product.empty() => const Product(
        id: 0,
        title: 'Unknown',
        description: 'Unknown',
        price: 0,
        discountPercentage: 0,
        thumbnail: 'Unknown',
        discountedPrice: 0,
      );

  factory Product.fromModel(ProductModel model) => Product(
        id: model.id,
        title: model.title,
        description: model.description,
        price: model.price,
        discountPercentage: model.discountPercentage,
        discountedPrice:
            model.price - (model.price * model.discountPercentage / 100),
        thumbnail: model.thumbnail,
      );
}
