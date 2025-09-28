void main(){
  final numbers = [1,2,3,4,4,5,6,7,7,8,9,10];
  
  print("Numbers: ${numbers}");
  print("First: ${numbers.first}");
  print("First another way: ${numbers[0]}");
  print("Reversed: ${numbers.reversed}");
  
  
  final reversedNumbers = numbers.reversed;
  
  print("Iterable: ${reversedNumbers}");
  print("List: ${reversedNumbers.toList()}");
  print("Set: ${reversedNumbers.toSet()}");
  
  
  final numbersGreaterThanFive = numbers.where((int num) {
    return num > 5; //devuelve true or false
  } );
  
  print("Numbers greater than five: ${numbersGreaterThanFive} ");
  print("Set Numbers greater than five: ${numbersGreaterThanFive.toSet()} ");
}