import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_swither_using_provider/pages/home.dart';
import 'package:theme_swither_using_provider/provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      // child: MaterialApp(
      //   title: 'Flutter Demo',
      //   theme: ThemeData.dark(),
      //   home: const HomePage(title: 'Home Page'),
      // ),
      builder: (context, child) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          // theme: ThemeData.dark(),
          theme: themeProvider.theme,
          home: const HomePage(title: 'Home Page'),
        );
      },
    );
  }
}
