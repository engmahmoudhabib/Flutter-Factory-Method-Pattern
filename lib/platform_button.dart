import 'package:flutter/material.dart';

abstract class PlatformButton {
  Widget button(BuildContext context, Widget child, Function? onPressed);
  factory PlatformButton(TargetPlatform targetPlatform) {
    switch (targetPlatform) {
      case TargetPlatform.android:
        return AndroidButton();
      case TargetPlatform.iOS:
        return AndroidButton();
      default:
        return WebButton();
    }
  }
}

class AndroidButton implements PlatformButton {
  Widget button(BuildContext context, Widget child, Function? onPressed) =>
      ElevatedButton(
        onPressed: () => onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: child,
      );
}

class WebButton implements PlatformButton {
  Widget button(BuildContext context, Widget child, Function? onPressed) =>
      ElevatedButton(
        onPressed: () => onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: child,
      );
}

class IOSButton implements PlatformButton {
  Widget button(BuildContext context, Widget child, Function? onPressed) =>
      ElevatedButton(
        onPressed: () => onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: child,
      );
}
