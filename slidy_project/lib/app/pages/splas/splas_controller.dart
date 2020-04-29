import 'package:mobx/mobx.dart';

part 'splas_controller.g.dart';

class SplasController = _SplasControllerBase with _$SplasController;

abstract class _SplasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
