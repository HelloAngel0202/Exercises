

void main() {
  
  var perro = Perro(-9); 
  perro.comer(); 

  
}


// Clase abstracta Animal
abstract class Animal {
  void comer(); 
}

// Subclase Perro que implementa la clase Animal
class Perro extends Animal {
  int edad;

 
  Perro(this.edad);

 
  @override
  void comer() {
    if (edad > 0) {
      print('El perro está comiendo.');
    } else {
      print('Número menor que cero, el perro no está comiendo.');
    }
  }
}




