import 'package:flutter/material.dart';

import '../features/home/presentation/welcome_page.dart';
import 'theme.dart';

class FutSchoolApp extends StatelessWidget {
  const FutSchoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FutSchool',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      home: const WelcomePage(),
    );
  }
}
