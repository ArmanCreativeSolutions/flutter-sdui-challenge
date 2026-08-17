import 'package:dartz/dartz.dart';
import 'package:flutter_sdui_challenge/core/error/failures.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/form_schema_entity.dart';

abstract class FormRepository {
  Future<Either<Failure, FormSchemaEntity>> getFormSchema();
  Future<Either<Failure, Unit>> submitForm(Map<String, dynamic> formData);
}
