import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sdui_challenge/core/di/injection_container.dart';
import 'package:flutter_sdui_challenge/core/enums/form_status.dart';
import 'package:flutter_sdui_challenge/core/themes/app_theme.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/bloc/form_bloc.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/bloc/form_event.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/bloc/form_state.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/widgets/dynamic_field_widget.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/widgets/error_retry_widget.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/widgets/submit_button_widget.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<FormBloc>()..add(const FormEvent.schemaRequested()),
      child: const _DynamicFormView(),
    );
  }
}

class _DynamicFormView extends StatelessWidget {
  const _DynamicFormView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form')),
      body: BlocConsumer<FormBloc, FormViewState>(
        listenWhen: (p, c) => p.status != c.status,
        listener: (context, state) {
          if (state.status == FormStatus.submitSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Form submitted successfully')),
            );
          } else if (state.status == FormStatus.submitError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.submitErrorMessage ?? 'Submit failed'),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == FormStatus.schemaError) {
            return ErrorRetry(
              message: state.schemaErrorMessage ?? 'Failed to load form',
              onRetry: () => context.read<FormBloc>().add(
                const FormEvent.schemaRequested(),
              ),
            );
          }
          if (!state.hasSchema) {
            return const SizedBox.shrink();
          }

          final fields = state.schema!.fields;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (final field in fields) DynamicFieldWidget(field: field),
                const SizedBox(height: AppSpacing.lg),
                SubmitButtonWidget(
                  isSubmitting: state.isSubmitting,
                  onPressed: () => context.read<FormBloc>().add(
                    const FormEvent.formSubmitted(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
