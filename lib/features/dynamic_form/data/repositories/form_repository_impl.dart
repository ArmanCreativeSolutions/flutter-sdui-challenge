import 'package:dartz/dartz.dart';
import 'package:flutter_sdui_challenge/core/error/exceptions.dart';
import 'package:flutter_sdui_challenge/core/error/failures.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/data/datasources/form_remote_data_source.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_schema_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/repositories/form_repository.dart';

class FormRepositoryImpl implements FormRepository {
  final FormRemoteDataSource remoteDataSource;

  const FormRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, FormSchemaEntity>> getFormSchema() async {
    try {
      final model = await remoteDataSource.getFormSchema();
      return Right(model.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (_) {
      return const Left(ParsingFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> submitForm(
    Map<String, dynamic> formData,
  ) async {
    try {
      await remoteDataSource.submitForm(formData);
      return const Right(unit);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
