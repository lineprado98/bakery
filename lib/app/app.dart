import 'package:bakery/app/home_page.dart';
import 'package:bakery/app/store_page.dart';
import 'package:bakery/app/theme/color_schemes.dart';
import 'package:bakery/app/theme/text_theme_app.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextThemeApp.theme,
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      home: const StorePage(),
    );
  }
}
