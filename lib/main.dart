import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../screens/home_page.dart';
import '../theme/app_theme.dart';

Future<void> main() async {
  await initializeDateFormatting('ca');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: myThemeData,
    );
  }
}
