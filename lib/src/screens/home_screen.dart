import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_notification/src/controllers/home_controller.dart';
import 'package:flutter_notification/src/services/notification_service.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = HomeController();

  @override
  void initState() {
    super.initState();
    LocalNotification.initialize(flutterLocalNotificationsPlugin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de notificações'),
      ),
      body: ListView.separated(
        itemCount: controller.lista.length,
        itemBuilder: (BuildContext contexto, int i) {
          final lista = controller.lista;
          return GestureDetector(
            onTap: () {
              final currentItem = lista[i];
              LocalNotification.showBigTextNotification(
                  title: currentItem.name,
                  body: currentItem.description,
                  flutterLocalNotificationsPlugin:
                      flutterLocalNotificationsPlugin);
            },
            child: ListTile(
              title: Text(lista[i].name),
              trailing: Text(lista[i].description),
            ),
          );
        },
        separatorBuilder: (_, __) => const Padding(
          padding: EdgeInsets.all(5),
          child: Divider(),
        ),
      ),
    );
  }
}
