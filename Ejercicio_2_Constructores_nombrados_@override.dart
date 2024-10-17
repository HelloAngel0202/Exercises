void main() {
  // print("Hola, Mundo!");



 var personas = Persona("Angel",26);
  var empleado = Empleado(personas.nombre,personas.edad, 3000);

  empleado.mostrarDetalles();

}

class Persona {
  // Atributos
  String nombre;
  int edad;


  Persona(this.nombre, this.edad);

 
  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Edad: $edad');
  }
}

class Empleado extends Persona {
  double salario;


  Empleado(String nombre, int edad, this.salario) : super(nombre, edad);

 
  @override
  void mostrarDetalles() {
    super.mostrarDetalles(); 
    print('Salario: $salario');
  }
}
