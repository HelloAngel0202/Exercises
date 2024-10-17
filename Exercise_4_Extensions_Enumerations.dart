
void main() {

  int nm = 2;

  // Verificar si el número es par
  if (nm.isEven) {
    print('El numero $nm es par.');
  } else {
    print('El numero $nm es impar.');
  }

  // Mostrar los días de la semana
  print('Estos son los dias de:');
  for (var dia in DiaSemanas.values) {
    print(dia);
  }
}


// Enumeración para los días de la semana
enum DiaSemanas {
Monday,
Tuesday,
Wednesday,
Thursday,
Friday,
Saturday,
Sunday
}
// Extensión para verificar si un número es par
extension Parity on int { 
bool isEven() { 
  return this % 2 == 0;
 } 
}

