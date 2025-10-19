void main(){
  
  
  final mySquare = Square( side: 10 );
  
  
  print("Square: ${mySquare.calculation()}");
  
}

class Square {
  
  double side;
  
  Square( {required this.side} );
    
    
    double calculation() {
    
    return side * side;
  }
    
    
}

void main(){
  
  
  final mySquare = Square( side: 10 );
  
  mySquare.side = -5;
  
  
  print("Square: ${mySquare.calculation()}");
  
}

class Square {
  
  double _side;
  
  Square( {required double side} )
    : _side = side;
  
  
  double get area{
    return _side * _side;
  }
  
   set side(double value){
    print('The value is: $value');
    
    if( value < 0 ) throw 'Value must be greater than 0';
    
    _side = value;
  }
    
    
    double calculation() {
    
    return _side * _side;
  }
    
    
}

//Asserts

void main(){
  
  
  final mySquare = Square( side: -10 );
  
//   mySquare.side = -5;
  
  
  print("Square: ${mySquare.calculation()}");
  
}

class Square {
  
  double _side;
  
  Square( {required double side} )
      :assert( side >= 0, "The side should be greater than 0"), 
        _side = side;
  
  
  double get area{
    return _side * _side;
  }
  
//    set side(double value){
//     print('The value is: $value');
    
//     if( value < 0 ) throw 'Value must be greater than 0';
    
//     _side = value;
//   }
    
    
    double calculation() {
    
    return _side * _side;
  }
    
    
}