import 'package:pingo_learn_r1/data/datasources/product_remote_datasource.dart';
import 'package:pingo_learn_r1/domain/entities/product.dart';
import 'package:pingo_learn_r1/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final DummyJsonRemoteDataSource _dataSource;

  int _limit = 30;
  int _skip = 0;
  int? _total;
  ProductRepositoryImpl(this._dataSource);

  @override
  Future<List<Product>> getProducts() async {
    try {
      final response = await _dataSource.fetchProducts(limit: _limit);
      _total = response.total;
      return response.products.map((e) => Product.fromModel(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Product>> fetchMoreProducts() async {
    _skip += _limit;
    if (_skip >= _total!) {
      throw DataException('No more products');
    }
    final res = await _dataSource.fetchProducts(skip: _skip, limit: _limit);
    _limit = res.limit;
    return res.products.map((e) => Product.fromModel(e)).toList();
  }
}

class DataException implements Exception {
  final String message;
  DataException(this.message);
}
