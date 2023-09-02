import 'package:flutter/material.dart';
import 'package:flutter_notification/src/services/notification_service.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(providers: [
    Provider<NotificationService>(
      create: (context) => NotificationService(),
    )
  ], child: const App()));
}
