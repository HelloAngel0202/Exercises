void main() {
  // Ejemplo correcto
   var delfin = Delfin();
    delfin.nadar();


    var auto = Vehiculo.crear('auto');
  auto.tipoDeVehiculo();  // Salida: Esto es un auto.
  
  var moto = Vehiculo.crear('moto');
  moto.tipoDeVehiculo();  // Salida: Esto es una moto.
  
  var desconocido = Vehiculo.crear('avión');
  desconocido.tipoDeVehiculo();  // Salida: Tipo de vehículo desconocido.

  
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

  @override
  void comer() {
    if (edad > 0) {
      print('El perro está comiendo.');
    } else {
      print('Número menor que cero, el perro no está comiendo.');
    }
  }
}

// Mixin Nadador
mixin Nadador {
  void nadar() {
    print('El defin Esta nadando.');


  }
}

class Delfin extends Animal with Nadador {
  @override
  void comer() {
    nadar();
  }
}



// Clase abstracta Vehículo
// Clase abstracta Vehículo con constructor generativo
abstract class Vehiculo {
  Vehiculo();  // Constructor generativo vacío

  void tipoDeVehiculo();  // Método abstracto

  // Factory constructor que crea vehículos dependiendo del tipo
  factory Vehiculo.crear(String tipo) {
    if (tipo == 'auto') {
      return Auto();
    } else if (tipo == 'moto') {
      return Moto();
    } else {
      return VehiculoDesconocido();  // Devolveremos siempre una instancia válida
    }
  }
}

// Clase Auto que hereda de Vehículo
class Auto extends Vehiculo {
  @override
  void tipoDeVehiculo() {
    print('Esto es un auto.');
  }
}

// Clase Moto que hereda de Vehículo
class Moto extends Vehiculo {
  @override
  void tipoDeVehiculo() {
    print('Esto es una moto.');
  }
}

// Clase para manejar vehículos desconocidos
class VehiculoDesconocido extends Vehiculo {
  @override
  void tipoDeVehiculo() {
    print('Tipo de vehículo desconocido.');
  }
}




