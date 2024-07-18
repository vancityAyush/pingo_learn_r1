import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pingo_learn_r1/data/repositories/product_repository_impl.dart';
import 'package:pingo_learn_r1/domain/entities/product.dart';
import 'package:pingo_learn_r1/domain/usecases/fetch_more_products.dart';
import 'package:pingo_learn_r1/domain/usecases/get_products.dart';

class ProductProvider with ChangeNotifier {
  final GetProductsUseCase getProductsUseCase;
  final FetchMoreProductsUseCase fetchMoreProductsUseCase;
  final PagingController<int, Product> _paginationController =
      PagingController(firstPageKey: 0);

  ProductProvider({
    required this.getProductsUseCase,
    required this.fetchMoreProductsUseCase,
  });

  PagingController<int, Product> get paginationController =>
      _paginationController;

  Future<void> loadInitialProducts() async {
    paginationController.notifyPageRequestListeners(0);
    paginationController.notifyStatusListeners(PagingStatus.loadingFirstPage);
    final result = await getProductsUseCase();
    paginationController.itemList = result;
    paginationController.addPageRequestListener((pageKey) {
      loadMoreProducts();
    });
  }

  Future<void> loadMoreProducts() async {
    try {
      final result = await fetchMoreProductsUseCase();
      paginationController.appendPage(result, paginationController.nextPageKey);
    } on DataException catch (e) {
      paginationController.appendLastPage([]);
      paginationController.notifyStatusListeners(
        PagingStatus.completed,
      );
    }
  }
}
