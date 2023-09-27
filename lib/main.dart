// ignore_for_file: prefer_const_constructors

import 'package:factory_method_app/constants/themes.dart';
import 'package:factory_method_app/helpers/theme_manager.dart';
import 'package:factory_method_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

ThemeManager _themeManager = ThemeManager();

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  void initState() {
    _themeManager.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _themeManager.removeListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: HomePage(
        themeManager: _themeManager,
      ),
    );
  }
}
