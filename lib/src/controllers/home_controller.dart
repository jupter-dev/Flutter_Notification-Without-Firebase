import '../models/logic.dart';

class HomeController {
  late List<Logic> lista;

  HomeController() {
    lista = [
      Logic(
        name: 'Primeira',
        description: 'Essa é a notificação 1',
        icon: 'Algum qualquer',
      ),
      Logic(
        name: 'Segunda',
        description: 'Essa é a notificação 2',
        icon: 'Algum qualquer',
      ),
      Logic(
        name: 'Terceira',
        description: 'Essa é a notificação 3',
        icon: 'Algum qualquer',
      ),
    ];
  }
}
