import 'package:flutter_modular/flutter_modular.dart';
import 'package:multifirebaseslogin/app/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const HomePage()),
  ];
}
