
void main() {
  // print("Hola, Mundo!");



 var personas = Persona("Angel",26);
 personas.mostrarDetalles();

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