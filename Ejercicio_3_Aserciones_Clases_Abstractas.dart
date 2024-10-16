

void main() {
  // Ejemplo correcto
  var perro = Perro(-9); // Perro con 3 años de edad
  perro.comer(); // Llamada al método comer

  
}


// Clase abstracta Animal
abstract class Animal {
  void comer(); // Método abstracto
}

// Subclase Perro que implementa la clase Animal
class Perro extends Animal {
  int edad;

  // Constructor con aserción
  // Constructor
  Perro(this.edad);

  // Implementación del método comer
  @override
  void comer() {
    if (edad > 0) {
      print('El perro está comiendo.');
    } else {
      print('Número menor que cero, el perro no está comiendo.');
    }
  }
}




