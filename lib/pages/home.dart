import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:theme_swither_using_provider/provider/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            debugPrint('Toggle button pressed.');
            themeProvider.toggleTheme();
          },
          child: const Text('Toggle Theme'),
        ),
      ),
    );
  }
}
