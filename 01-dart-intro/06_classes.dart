void main(){
  
  
  final Hero spiderman = Hero(name: "Peter", power: "Throw spider web", isAlive: true);
  
  print( spiderman );
  
  final Map<String, dynamic> json = {
    "name": "Tony Stark",
    "power": "Money",
    "isAlive": false,
    123: "123"
  };
  
  final Hero ironman = Hero.fromJson(json);
  
  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
//   Hero(String pName, String pPower)
//     : name = pName,
//       power = pPower;
  // Hero(this.name, this.power, this.isAlive);

  Hero({required this.name, required this.power, required this.isAlive});
  
  
    Hero.fromJson(Map<String,dynamic> json)
      : name = json["name"] ?? "Name not found",
        power = json["power"] ?? "Power not found",
        isAlive = json["isAlive"] ?? "IsAlive not found";
  
  @override
  String toString(){
    return "Name: $name - Power: $power - isAlive: ${isAlive ? "YES" : "NOPE"}";
  }
 }
