import 'package:flutter/material.dart';
import 'core/di/injection_container.dart';
import 'package:flutter_sdui_challenge/core/themes/app_theme.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/presentaion/pages/dynamic_form_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Dynamic Form Builder',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: const DynamicFormPage(),
    );
  }
}
