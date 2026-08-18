# Project Documentation

## 1. What is this project?

This is a small Flutter application that demonstrates how to build a dynamic form UI.  
The form can be described in JSON and then turned into ready‑to‑use Flutter widgets.  
The project shows a full workflow from defining the data model, through state management,
to rendering the form and testing it.

## 2. State management

The app uses the **Bloc** pattern (flutter_bloc) to manage the UI state of the form.  
All form events (like loading a schema, field changes, validation errors) are handled
by dedicated Bloc classes. This keeps the UI code clean and makes the behaviour easy
to test.

## 3. Main dependencies

| Type | Package | Usecases |
|------|---------|---------------|
| Language | `freezed` | Generates immutable model classes from JSON and provides the `freezed` annotation. |
| Build tool | `build_runner` | Runs the code‑generation step that creates the Freezed classes. |
| JSON handling | `json_serializable` | Helps serialize/deserialize model objects. |
| State management | `flutter_bloc` | Implements the Bloc pattern for clean state handling. |
| UI | `flutter` (no extra packages) | Core Flutter framework for building the UI. |

*All dependencies are listed in `pubspec.yaml`.*

## 4. Tests that already exist

- **Unit tests** – located under `test/features/dynamic_form/...`.  
  They check that the generated models can handle unknown field types gracefully,
  that validators work correctly, and that the Bloc behaves as expected.

- **Widget tests** – cover the rendering of form fields and the overall form flow.  
  They simulate user actions and verify that errors and success messages appear.

All tests are run with `flutter test`. The current test suite finishes with *“All tests passed!”*.

## 5. How to run the project – step by step

1. **Clone the repository**  
   ```bash
   git clone https://github.com/your‑repo/flutter-sdui-challenge.git
   cd flutter-sdui-challenge
   ```

2. **Install the required packages**  
   ```bash
   flutter pub get
   ```

3. **Generate the immutable model classes**  
   The project uses Freezed, need run the builder once (and again after any
   changes to the `.freezed.dart` files).  
   ```bash
   dart run build build_runner build --delete-conflicting-outputs
   ```

4. **Run the application**  
   - For desktop or web:  
     ```bash
     flutter run
     ```  
     Or, to test on Chrome:  
     ```bash
     flutter run -d chrome
     ```

5. **Run the tests**  
   ```bash
   flutter test
   ```

6. **(Optional) Clean generated files**  
   For starting fresh, delete the generated files and run the builder again:  
   ```bash
   rm -rf build/
   dart run build build_runner build
   ```

