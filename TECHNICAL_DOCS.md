# Flutter Dynamic Form Builder (Server-Driven UI)

A Flutter form builder that fetches a **JSON form schema** from a server and
renders it dynamically `input` (text/number), `select`, `textarea`, and
`file` fields with client-side validation driven entirely by the schema.

Built for the ArmanCreativeSolutions Flutter SDUI challenge.

## Why it's structured this way

| Goal (from the brief)               | How it's addressed                                                                          |
| ----------------------------------- | ------------------------------------------------------------------------------------------- |
| Reusable / readable                 | Feature-first Clean Architecture; one widget/class per responsibility                       |
| Easy to move into another project   | `core/` has zero knowledge of `dynamic_form`; the feature only depends on `core/`           |
| Backend not ready yet               | `FormRemoteDataSource` interface + a mock impl reading the bundled JSON asset               |
| Swap to real API "as soon as ready" | Flip **one constant** (`kUseMockApi` in `injection_container.dart`) no other file changes |
| Documented decisions                | Every non-trivial class/file carries a doc comment explaining _why_, not just _what_        |
| Unit tests                          | Domain validators, JSON model parsing, repository, and Bloc are all covered                 |

## Architecture (feature-first Clean Architecture)

```
lib/
  core/                         # shared, feature-agnostic
    constant/                   # asset paths, endpoint paths, timeouts
    di/                         # get_it service locator + mock/real API switch
    enums/                      # FormFieldType, FormStatus
    error/                      # Exceptions (data layer) & Failures (domain layer)
    extensions/                 # String helpers used by validators/widgets
    theme/                      # AppTheme + spacing scale (the "design system")

  features/dynamic_form/
    domain/                     # pure Dart no Flutter, no dio, no json
      entities/                 # FormFieldEntity, FormSchemaEntity, FieldPropsEntity (union)
      repositories/             # FormRepository (abstract contract)
      usecases/                 # GetFormSchema, SubmitForm
      validators/               # FieldValidator + one impl per field kind

    data/                       # talks to the outside world
      models/                   # freezed + json_serializable, each with toEntity()
      datasources/
        form_remote_data_source.dart        # abstract contract (the swap seam)
        form_remote_data_source_mock.dart   # reads assets/form_schema.json
        form_remote_data_source_impl.dart   # real Dio implementation, ready to go
        form_local_asset_data_source.dart   # loads the bundled JSON
      repositories/             # FormRepositoryImpl Exception -> Failure translation

    presentation/
      bloc/                      # FormEvent, FormBloc, freezed FormViewState
      pages/                    # DynamicFormPage
      widgets/                  # DynamicFieldWidget (dispatcher) + one widget per field type
```

Dependency direction is strictly inward: `presentation -> domain <- data`.
The domain layer has no import of `flutter`, `dio`, or `dart:convert` it is
plain, synchronously-testable Dart, which is what makes the validators and
use cases trivial to unit test without a widget tree or an HTTP mock.

### Why `props` is a union type

The `type`/`props` shape in the schema is polymorphic a `select` field's
`props` is nothing like a `file` field's `props`. Modelling this as one
`FieldPropsEntity` freezed union (rather than one bag of 15 nullable fields)
means the compiler enforces exhaustive handling everywhere it's consumed
(widgets, validators). See the comment in `field_props_model.dart` for why
this union is parsed **manually** instead of via generated `fromJson` the
variant discriminator (`type`) lives on the _parent_ JSON object, not inside
`props` itself, which generated union code can't express.

## Switching from mock to the real backend

Everything routes through `FormRemoteDataSource`. Today,
`injection_container.dart` registers `FormRemoteDataSourceMock`, which reads
`assets/form_schema.json` and simulates latency. Once the backend from the
assignment is live:

```dart
// lib/core/di/injection_container.dart
const bool kUseMockApi = false; // <-- flip this
```

`FormRemoteDataSourceImpl` (Dio-backed) takes over automatically. Update the
two endpoint paths in `core/constant/app_constants.dart`
(`getFormEndpoint`, `submitFormEndpoint`) and `apiBaseUrl` nothing in
`domain/` or `presentation/` needs to change.

## Getting started

```bash
flutter pub get

# Generates *.freezed.dart and *.g.dart (gitignored on purpose, see below)
dart run build_runner build --delete-conflicting-outputs

flutter run
flutter test
```

> Generated files (`*.freezed.dart`, `*.g.dart`) are intentionally
> **gitignored** to avoid noisy diffs/merge conflicts standard practice for
> freezed projects. Run `build_runner` once after cloning, and again after
> touching any `@freezed` class.

## Tests

```
test/
  features/dynamic_form/
    domain/validators/        # TextFieldValidator, SelectFieldValidator, FileFieldValidator
    data/models/               # FormSchemaModel.fromJson against a fixture
    data/datasources/          # FormRemoteDataSourceMock
    data/repositories/         # FormRepositoryImpl (mocktail)
    presentation/bloc/          # FormBloc (bloc_test)  one event per trigger
```

Run everything with `flutter test`, or a single file with
`flutter test test/features/dynamic_form/presentation/bloc/form_bloc_test.dart`.

## Extending with a new field type

1. Add the type to `FormFieldType` (`core/enums/form_field_type.dart`).
2. Add a variant to `FieldPropsEntity`/`FieldPropsModel` and its JSON parsing
   branch in `FieldPropsModel.fromJson`.
3. Add a `FieldValidator` implementation (if it needs validation) and wire it
   into `FieldValidatorFactory`.
4. Add the widget and a `case` in `DynamicFieldWidget`.

No other file needs to change, this is the point of the dispatcher pattern.
