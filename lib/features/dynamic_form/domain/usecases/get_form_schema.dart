import 'package:dartz/dartz.dart';
import 'package:flutter_sdui_challenge/core/error/failures.dart';
import 'package:flutter_sdui_challenge/core/usecases/usecases.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_schema_entity.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/repositories/form_repository.dart';

class GetFormSchema implements UseCase<FormSchemaEntity, NoParams> {
  final FormRepository repository;
  
  const GetFormSchema(this.repository);

  @override
  Future<Either<Failure, FormSchemaEntity>> call(NoParams params) {
    return repository.getFormSchema();
  }
}
