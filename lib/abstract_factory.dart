import 'package:factory_method_app/platform_button.dart';
import 'package:flutter/material.dart';

// Abstract Factory Pattern

abstract class PlatformFactory {
  Widget buildButton(BuildContext context, VoidCallback callback, String text);
 // Widget buildCircularIndicator(BuildContext context, Color color);
}

class AbstractFactory implements PlatformFactory {
  @override
  Widget buildButton(BuildContext context, VoidCallback callback, String text) {
    return PlatformButton(TargetPlatform.android).button(context, Text(text), callback);
  }

 /*  @override
  Widget buildCircularIndicator(BuildContext context, Color color) {
    return   PlatformButton(TargetPlatform.android).button(context, Text(text), callback);
  } */
}
