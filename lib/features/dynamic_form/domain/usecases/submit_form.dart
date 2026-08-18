import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_sdui_challenge/core/error/failures.dart';
import 'package:flutter_sdui_challenge/core/usecases/usecases.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/repositories/form_repository.dart';

class SubmitFormParams extends Equatable {
  final Map<String, dynamic> formData;

  const SubmitFormParams(this.formData);

  @override
  List<Object?> get props => [formData];
}

class SubmitForm implements UseCase<Unit, SubmitFormParams> {
  final FormRepository repository;

  const SubmitForm(this.repository);

  @override
  Future<Either<Failure, Unit>> call(SubmitFormParams params) {
    return repository.submitForm(params.formData);
  }
}
