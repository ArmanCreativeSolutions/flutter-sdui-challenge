import 'package:dio/dio.dart';
import 'package:flutter_sdui_challenge/core/constant/app_constants.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/datasources/form_local_asset_data_source.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/datasources/form_remote_data_source.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/datasources/form_remote_data_source_impl.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/datasources/form_remote_data_source_mock.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/repositories/form_repository_impl.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/repositories/form_repository.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/usecases/get_form_schema.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/usecases/submit_form.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/bloc/form_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

const bool kUseMockApi = true; // change this line to false to use the real API ;)

Future<void> initDependencies() async {
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: AppConstants.apiBaseUrl,
        connectTimeout: AppConstants.connectTimeout,
        receiveTimeout: AppConstants.receiveTimeout,
      ),
    ),
  );

  sl.registerLazySingleton<FormLocalAssetDataSource>(
    () => FormLocalAssetDataSourceImpl(),
  );

  if (kUseMockApi) {
    sl.registerLazySingleton<FormRemoteDataSource>(
      () => FormRemoteDataSourceMock(localAssetDataSource: sl()),
    );
  } else {
    sl.registerLazySingleton<FormRemoteDataSource>(
      () => FormRemoteDataSourceImpl(dio: sl()),
    );
  }

  sl.registerLazySingleton<FormRepository>(
    () => FormRepositoryImpl(remoteDataSource: sl()),
  );

  sl.registerLazySingleton(() => GetFormSchema(sl()));
  sl.registerLazySingleton(() => SubmitForm(sl()));

  sl.registerFactory(() => FormBloc(getFormSchema: sl(), submitForm: sl()));
}
