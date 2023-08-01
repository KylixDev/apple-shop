import 'package:apple_shop/data/datasource/category_product_datasource.dart';
import 'package:apple_shop/data/datasource/product_detail_datasource.dart';
import 'package:apple_shop/data/repository/category_product_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/repository/product_detail_repository.dart';
import '/data/datasource/product_datasource.dart';
import '/data/repository/product_repository.dart';
import '/data/datasource/banner_datasource.dart';
import '/data/repository/banner_repository.dart';
import '/data/datasource/category_datasource.dart';
import '/data/repository/category_repository.dart';
import '/data/datasource/authentication_datasource.dart';
import '/data/repository/authentication_repository.dart';

var locator = GetIt.instance;
Future<void> getItInit() async {
  // components
  locator.registerSingleton<Dio>(
    Dio(
      BaseOptions(baseUrl: 'http://startflutter.ir/api/'),
    ),
  );

  locator.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );

  // DataSource
  locator.registerFactory<IAuthenticationDataSource>(
    () => AuthenticationRemote(),
  );
  locator.registerFactory<ICategoryDataSource>(
    () => CategoryRemoteDataSource(),
  );
  locator.registerFactory<IBannerDataSource>(
    () => BannerRemoteDataSource(),
  );
  locator.registerFactory<IProductDataSource>(
    () => ProductRemoteDataSource(),
  );
  locator.registerFactory<IProductDetailDataSource>(
    () => ProductDetailRemoteDataSource(),
  );
  locator.registerFactory<ICategoryProductDataSource>(
    () => CategoryProductRemoteDataSource(),
  );

  // Repositories
  locator.registerFactory<IAuthenticationRepositiry>(
    () => AuthenticationRepository(),
  );
  locator.registerFactory<ICategoryRepository>(
    () => CategoryRepository(),
  );
  locator.registerFactory<IBannerRepository>(
    () => BannerRepository(),
  );
  locator.registerFactory<IProductRepository>(
    () => ProductRepository(),
  );
  locator.registerFactory<IProductDetailRepository>(
    () => ProductDetailRepository(),
  );
  locator.registerFactory<ICategoryProductRepository>(
    () => CategoryProductRepository(),
  );
}
