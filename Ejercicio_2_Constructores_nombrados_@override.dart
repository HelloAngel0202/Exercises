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

  // Constructor
  Persona(this.nombre, this.edad);

  // Método para mostrar los detalles de la persona
  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Edad: $edad');
  }
}

class Empleado extends Persona {
  double salario;

  // Constructor de Empleado que llama al constructor de Persona
  Empleado(String nombre, int edad, this.salario) : super(nombre, edad);

  // Método para mostrar los detalles del empleado
  @override
  void mostrarDetalles() {
    super.mostrarDetalles(); // Llamando al método de la clase base (Persona)
    print('Salario: $salario');
  }
}