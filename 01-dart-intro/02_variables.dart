void main(){
  final String pokemon = "Charmander";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["Lanza Fuego"];
  final sprites = <String>['charmander/front.png', "charmander/back.png"];
  

  //dynamic == null
  dynamic errorMessage = "Error";
  errorMessage = [1,2,3,4];
  errorMessage = {1,2,3,4};
  errorMessage = () => true;
  errorMessage = null;
  
  
  
  print("""
  Pokemon: $pokemon
  HP:$hp
  Is-Alive: $isAlive
  Abilities: $abilities
  sprites: $sprites
  
  Error: $errorMessage
  
  """);
}