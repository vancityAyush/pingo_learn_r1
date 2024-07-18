import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pingo_learn_r1/data/datasources/product_remote_datasource.dart';
import 'package:pingo_learn_r1/data/repositories/product_repository_impl.dart';
import 'package:pingo_learn_r1/domain/repositories/product_repository.dart';
import 'package:pingo_learn_r1/domain/usecases/fetch_more_products.dart';
import 'package:pingo_learn_r1/presentation/providers/product_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../domain/usecases/get_products.dart';

//Service Locator using GetIt
final sl = GetIt.instance;

/// Initializes the application.
///
/// This function ensures that EasyLocalization is initialized and then loads the dependencies required by the application.
/// It also initializes the [LocationService] and [ConnectivityHelper] to get the current or last fetched location and handle connectivity.
initApp() async {
  // await EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyD_tNPYQcXDHjie6lBZ_gpTCY7JGMhqLh8",
          appId: "1:925203440087:android:c7d86bef7f9f8102622b92",
          messagingSenderId: "pingo-learn-aa294",
          projectId: "pingo-learn-aa294"));

  await loadDependencies();

  // Get current or last fetched location
}

/// Loads the dependencies required by the application.
///
/// This function registers the necessary dependencies using the [GetIt] service locator.
/// It creates an instance of [Dio] and adds a [PrettyDioLogger] interceptor for logging network requests and responses.
/// It also registers the various use cases, repositories, and clients required by the application.
Future<void> loadDependencies() async {
  final dio = Dio();
  if (kDebugMode) {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
    ));
  }

  sl
    ..registerFactory(() => ProductProvider(
          getProductsUseCase: sl(),
          fetchMoreProductsUseCase: sl(),
        ))
    ..registerLazySingleton(() => GetProductsUseCase(sl()))
    ..registerLazySingleton(() => FetchMoreProductsUseCase(sl()))
    ..registerLazySingleton<ProductRepository>(
        () => ProductRepositoryImpl(sl()))
    ..registerLazySingleton(() => DummyJsonRemoteDataSource(sl()))
    ..registerLazySingleton(() => dio);
}
