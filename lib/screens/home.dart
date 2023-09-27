// ignore_for_file: prefer_const_constructors

import 'package:factory_method_app/constants/colors.dart';
import 'package:factory_method_app/helpers/theme_manager.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final ThemeManager themeManager;
  const HomePage({
    super.key,
    required this.themeManager,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (themeManager.themeMode == ThemeMode.dark) {
                        themeManager.toggleTheme(false);
                      } else {
                        themeManager.toggleTheme(true);
                      }
                    },
                    child: Icon(
                      Icons.mode_night_outlined,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
