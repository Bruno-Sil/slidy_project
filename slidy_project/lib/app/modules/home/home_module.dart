import 'package:dio/dio.dart';
import 'package:slidy_project/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_project/app/repositorise/poker_repository.dart';
import 'package:slidy_project/app/shared/utils/constants.dart';

import 'homepage.dart';


class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<PokeRepository>())),
        Bind((i) => PokeRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
