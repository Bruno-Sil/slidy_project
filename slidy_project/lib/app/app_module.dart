import 'package:slidy_project/app/pages/splas/splas_controller.dart';
import 'package:slidy_project/app/pages/splas/splas_page.dart';
import 'package:slidy_project/app/pages/splash/splash_controller.dart';
import 'package:slidy_project/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:slidy_project/app/app_widget.dart';

import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplasController()),
        Bind((i) => SplashController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplasPage()),
        Router('/login', module: LoginModule()),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
