import 'package:flutter_modular/flutter_modular.dart';
import 'package:multifirebaseslogin/firebase_serve.dart';

import 'home/home_module.dart';
import 'login/auth_guard.dart';
import 'login/login_module.dart';
import 'login/login_service.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind((i) => AuthService()),
    Bind((i) => AuthRouteGuard()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, __) => const ProjectSelectionScreen()), // Rota para ProjectSelectionScreen
    ModuleRoute('/login', module: LoginModule()), // Rota para LoginModule
    ModuleRoute('/home', module: HomeModule()), // Rota para HomeModule
  ];
}
