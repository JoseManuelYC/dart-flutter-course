void main() async {
  print("First print");
  
  try{
  final res = await httpGet("https://prueba-test.com");
  print(res);
  } on Exception catch(err) {
    print("Controlled Exception: $err");
  }catch(err){
    print('FATAL ERROR: $err');
  }

  
  print("Second print");
}


Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
//   throw Exception("Controlled Exception");
  
 throw "Error in execution";
  
//   return "Petition execution succesfully";
}