import 'package:pingo_learn_r1/domain/entities/product.dart';

abstract class ProductRepository {
  const ProductRepository();

  Future<List<Product>> getProducts();

  Future<List<Product>> fetchMoreProducts();
}
