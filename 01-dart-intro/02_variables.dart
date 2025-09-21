void main(){
  final String pokemon = "Charmander";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["Lanza Fuego"];
  final sprites = <String>['charmander/front.png', "charmander/back.png"];
  
  
  
  print("""
  Pokemon: $pokemon
  HP:$hp
  Is-Alive: $isAlive
  Abilities: $abilities
  sprites: $sprites
  
  """);
}