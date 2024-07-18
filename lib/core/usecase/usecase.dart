abstract class ParamsUseCase<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCase<Type> {
  Future<Type> call();
}

class NoParams {}

class PaginationParams {
  final int page;
  PaginationParams({required this.page});
}
