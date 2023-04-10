import 'package:dio/dio.dart';
import 'package:game_rev/src/core/network/api_caller.dart';
import 'package:game_rev/src/core/network/network.dart';
import 'package:game_rev/src/features/admin/data/datasource/admin_data_source.dart';
import 'package:game_rev/src/features/admin/data/repository/admin_repository_impl.dart';
import 'package:game_rev/src/features/admin/domain/repository/repository.dart';
import 'package:game_rev/src/features/admin/domain/service/admin_facade.dart';
import 'package:game_rev/src/features/admin/presentation/admin_bloc.dart';
import 'package:game_rev/src/features/authentication/data/data_source/auth_local_data_source.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_data_source.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_manager.dart';
import 'package:game_rev/src/features/authentication/data/repository/authentication_repository_impl.dart';
import 'package:game_rev/src/features/authentication/domain/repository/authentication_repository.dart';
import 'package:game_rev/src/features/authentication/domain/usecase/auth_facade.dart';
import 'package:game_rev/src/features/authentication/presentation/authentication_bloc.dart';
import 'package:game_rev/src/features/authentication/presentation/onboarding/bloc/onboarding_bloc.dart';
import 'package:game_rev/src/features/dashboard/data/datasource/dashboard_remote_source.dart';
import 'package:game_rev/src/features/dashboard/data/repository/dashboard_repo_impl.dart';
import 'package:game_rev/src/features/dashboard/domain/repository/dashboard_repo.dart';
import 'package:game_rev/src/features/dashboard/domain/usecase/dashboard_facade.dart';
import 'package:game_rev/src/features/dashboard/presentation/dashboard_bloc/dashboard_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

// import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

final GetIt getIt = GetIt.instance;

Future<void> initialize() async {
  getIt.registerFactory(
        () =>
        OnboardingBloc(
          authFacade: getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        AuthenticationBloc(
          authFacade: getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        DashboardBloc(
          dashboardFacade: getIt(),
        ),
  );

  getIt.registerFactory(
        () =>
        AdminBloc(
          getIt(),
        ),
  );


  getIt.registerLazySingleton<AuthenticationRepository>(
        () =>
        AuthRepoImpl(
          authenticationDatasource: getIt(),
          authenticationLocalDatasource: getIt(),
          networkInfo: getIt(),
          authenticationManager: getIt(),
        ),
  );

  getIt.registerLazySingleton<DashboardRepository>(
        () =>
        DashboardRepoImpl(
          remoteSource: getIt(),
          networkInfo: getIt(),
        ),
  );

  getIt.registerLazySingleton<AdminRepository>(
        () =>
        AdminRepositoryImpl(
          remoteDataSource: getIt(),
          networkInfo: getIt(),
        ),
  );

  getIt.registerLazySingleton<AuthFacade>(
        () => AuthFacade(repository: getIt()),
  );

  getIt.registerLazySingleton<DashboardFacade>(
        () => DashboardFacade(getIt()),
  );


  getIt.registerLazySingleton<AdminServiceFacade>(
        () => AdminServiceFacade(getIt()),
  );

  //below are data sources
  await Hive.initFlutter();

  final hiveInit = await Hive.openBox("auth_local");
  getIt.registerLazySingleton<AuthenticationLocalDataSource>(
        () => HiveLocalDataSourceImpl(hiveBox: hiveInit),
  );
  getIt.registerLazySingleton<AuthenticationDatasource>(
        () =>
        AuthenticationDataSourceImpl(
          apiCaller: getIt(),
        ),
  );

  getIt.registerLazySingleton<DashboardRemoteSource>(
        () =>
        DashboardRemoteSource(
          getIt(),
        ),
  );

  getIt.registerLazySingleton<AdminRemoteDataSource>(
        () =>
        AdminRemoteDataSource(
          getIt(),
        ),
  );

  final authManagerBox = await Hive.openBox('authManager');
  await AuthenticationManager.init(authManagerBox);
  getIt.registerLazySingleton(() => AuthenticationManager.getInstance());

  getIt.registerLazySingleton<ApiCaller>(
        () =>
        DioApiCaller(
          Dio(),
          AuthenticationManager.getInstance(),
        ),
  );

  getIt.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(getIt()),
  );

  getIt.registerLazySingleton(() => InternetConnectionCheckerPlus());
}
