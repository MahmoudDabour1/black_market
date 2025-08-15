import 'package:black_market/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:black_market/features/auth/data/repos/auth_repos.dart';
import 'package:black_market/features/auth/logic/auth_cubit.dart';
import 'package:black_market/features/gold/data/data_source/gold_remote_data_source.dart';
import 'package:black_market/features/gold/data/repos/gold_repos.dart';
import 'package:black_market/features/gold/logic/gold_cubit.dart';
import 'package:black_market/features/profile/data/data_source/profile_remote_data_source.dart';
import 'package:black_market/features/profile/data/repos/profile_repos.dart';
import 'package:black_market/features/profile/logic/profile_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  await Hive.initFlutter();

  Dio dio = DioFactory.getDio();

//auth
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSource(dio));
  sl.registerLazySingleton<AuthRepos>(
      () => AuthReposImpl(authRemoteDataSource: sl()));
  sl.registerFactory<AuthCubit>(() => AuthCubit(sl()));

  sl.registerLazySingleton<GoldRemoteDataSource>(
      () => GoldRemoteDataSource(dio));
  sl.registerLazySingleton<GoldRepos>(() => GoldReposImpl(sl()));
  sl.registerFactory<GoldCubit>(() => GoldCubit(sl()));

  sl.registerLazySingleton<ProfileRemoteDataSource>(
      () => ProfileRemoteDataSource(dio));
  sl.registerLazySingleton<ProfileRepos>(() => ProfileReposImpl(sl()));
  sl.registerFactory<ProfileCubit>(() => ProfileCubit(sl()));
}
