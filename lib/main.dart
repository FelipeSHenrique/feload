import 'package:feload/screens/main_screen.dart';
import 'package:feload/theme/app_theme.dart';
import 'package:feload/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppTheme appTheme = AppTheme();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      statusBarBrightness: Brightness.dark,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme.theme(),
      routes: {
        AppRoutes.home: (ctx) => const MainScreen()
      },
    );
  }
}
