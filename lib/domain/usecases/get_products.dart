import 'package:pingo_learn_r1/domain/entities/product.dart';
import 'package:pingo_learn_r1/domain/repositories/product_repository.dart';

import '../../core/usecase/usecase.dart';

class GetProductsUseCase implements UseCase<List<Product>> {
  final ProductRepository repository;

  GetProductsUseCase(this.repository);

  @override
  Future<List<Product>> call() async {
    return repository.getProducts();
  }
}
