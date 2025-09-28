void main(){
  print(greetEveryone());
  print("Suma: ${addNumbers(10, 20)}");
  print("Suma: ${addNumbersOptional(10)}");
}

String greetEveryone(){
  return "Hello everyone";
}

int addNumbers( int a , int b) => a + b;

int addNumbersOptional(int a , [ int b = 0 ]){
  return a + b;
}

int addNumbersOptional2(int a , [ int? b ]){
  b ??= 0;
  return a + b ;
}