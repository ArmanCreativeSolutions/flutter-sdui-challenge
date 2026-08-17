import 'package:flutter/material.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DynamicFormView();
  }
}

class _DynamicFormView extends StatelessWidget {
  const _DynamicFormView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form')),
      body: const SizedBox(),
    );
  }
}
