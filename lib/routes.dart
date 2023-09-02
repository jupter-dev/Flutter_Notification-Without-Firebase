import 'package:flutter/material.dart';
import 'package:flutter_notification/src/screens/notification_screen.dart';
import 'package:flutter_notification/src/screens/home_screen.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '/home': (_) => const HomeScreen(),
    '/notification': (_) => const NotificationScreen(),
  };

  static String initial = '/home';
  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
}
