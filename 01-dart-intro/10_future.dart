void main(){
  print("First print");
  
  
  httpGet("https://prueba-test.com").then((value) {
    print(value);
  }).catchError((err){
    print('Error: $err');
  });
  
  print("Second print");
}


Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 1), () {
    throw "Error in execution";
//     return "Future test";
  } );
}