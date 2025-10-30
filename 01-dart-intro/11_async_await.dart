void main() async {
  print("First print");
  
  try{
  final res = await httpGet("https://prueba-test.com");
  print(res);
  }catch(err){
    print(err);
  }

  
  print("Second print");
}


Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw "Error in execution";
  
//   return "Petition execution succesfully";
}