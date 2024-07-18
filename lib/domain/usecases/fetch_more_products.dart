import 'package:pingo_learn_r1/domain/entities/product.dart';
import 'package:pingo_learn_r1/domain/repositories/product_repository.dart';

import '../../core/usecase/usecase.dart';

class FetchMoreProductsUseCase implements UseCase<List<Product>> {
  final ProductRepository repository;

  FetchMoreProductsUseCase(this.repository);

  @override
  Future<List<Product>> call() async {
    try {
      return repository.fetchMoreProducts();
    } catch (e) {
      rethrow;
    }
  }
}
