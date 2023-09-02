import 'package:flutter/material.dart';
import 'package:flutter_notification/src/controllers/home_controller.dart';
import 'package:flutter_notification/src/services/notification_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = HomeController();

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
              Provider.of<NotificationService>(context, listen: false)
                  .showNotification(CustomNotification(
                      id: i,
                      title: 'Notificação para ${currentItem.name}',
                      body: 'Descrição: ${currentItem.description}',
                      payload: '/notification'));
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