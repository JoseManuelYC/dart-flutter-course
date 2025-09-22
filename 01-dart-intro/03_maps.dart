void main() {
  final Map<String, dynamic> pokemon = {
    "name": "Picachu",
    "Salud": 100,
    "IsAlive": true,
    "Abilities": ['Lanza Fuego'],
    "sprites": {1: "pikachu/front.png", 2: "pikachu/back.png"},
  };

  
  
  print(pokemon);

  print('Nombre del pokemon: ${pokemon["name"]}');

  print("Image Front: ${pokemon['sprites'][1]}");
  print("Image Back: ${pokemon['sprites'][2]}");
}
