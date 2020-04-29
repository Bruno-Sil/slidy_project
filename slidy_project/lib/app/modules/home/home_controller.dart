import 'package:mobx/mobx.dart';
import 'package:slidy_project/app/models/pokemon_model.dart';
import 'package:slidy_project/app/repositorise/poker_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store{
  String text = '';
  final PokeRepository repository;

  //@observable 
  ObservableFuture<List<PokemonModel>> pokemons;

  _HomeControllerBase(this.repository) {
    fatchPokemons();
  }

  @action
  fatchPokemons() {
     pokemons = repository.getAllPokemons().asObservable();
  }
}